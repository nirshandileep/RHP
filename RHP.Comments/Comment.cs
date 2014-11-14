using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RHP.Common;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;

namespace RHP.Comments
{
    public class Comment : Base
    {
        public int CommentId { get; set; }
        public string CommentText { get; set; }
        public decimal RatingValue { get; set; }
        public string FilePath { get; set; }
        private int _contextTypeId;
        public int ContextTypeId
        {
            get 
            {
                return _contextTypeId;
            }
            set
            {
                ContextType = (Enums.ContextType)value;
                _contextTypeId = value;
            }
        }

        public Enums.ContextType ContextType { get; set; }

        private int _commentTypeId;
        public int CommentTypeId
        {
            get
            {
                return _commentTypeId;
            }
            set
            {
                CommentType = (Enums.CommentType)value;
                _commentTypeId = value;
            }
        }

        public Enums.CommentType CommentType { get; set; }

        private List<FeedbackQuestion>  feedbackQuestions;
        public List<FeedbackQuestion> FeedbackQuestions 
        {
            get
            {
                if (feedbackQuestions == null)
                {
                    feedbackQuestions = SelectFeedbackQuestions();
                }
                return feedbackQuestions;
            }
            set 
            {
                feedbackQuestions = value;
            }
        }

        public Guid ContextId { get; set; }

        /// <summary>
        /// Only to be used for Generic methods. Avoid using this constructor for other purposes.
        /// </summary>
        public Comment()
        {
 
        }

        public Comment(Enums.CommentType commentType)
        {
            CommentTypeId = (int)commentType;
            CommentType = commentType;
        }

        public Comment(Enums.ContextType contextType)
        {
            ContextTypeId = (int)contextType;
            ContextType = contextType;
        }
        public bool Insert(Comment comment)
        {
            bool result = false;
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result = new CommentDAO().Insert(comment, db, transaction);
                transaction.Commit();
            }
            catch (System.Exception ex)
            {
                transaction.Rollback();
                result = false;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return result;

        }

        public bool Update(Comment comment)
        {
            bool result;
            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result = new CommentDAO().Update(comment, db, transaction);
                transaction.Commit();
            }
            catch (System.Exception ex)
            {
                transaction.Rollback();
                result = false;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return result;
        }

        public bool Delete(Comment comment)
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result= new CommentDAO().Delete(comment, db, transaction);

                transaction.Commit();
            }
            catch (System.Exception ex)
            {
                transaction.Rollback();
                result = false;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return result;
        }

        public Comment(Enums.ContextType contextType, Guid contextId)
        {
            ContextTypeId = (int)contextType;
            ContextType = contextType;
            ContextId = contextId;
        }

        public List<Comment> SelectListByStudentId(Guid studentId)
        {
            return CommentDAO.GetAllByFieldValue("ContextId", studentId, Enums.ContextType.Student);
        }

        public List<Comment> SelectListByLandLordId(Guid landlordId)
        {
            return CommentDAO.GetAllByFieldValue("ContextId", landlordId, Enums.ContextType.Landlord);
        }

        public DataSet SelectDataSetByStudentId(Guid studentId)
        {

            return new CommentDAO().SelectByContext((int)Enums.ContextType.Student, studentId);
        }

        public DataSet SelectDataSetByLandlordId(Guid landlordId)
        {
            return new CommentDAO().SelectByContext((int)Enums.ContextType.Landlord, landlordId);
        }

        public bool SaveDataSet(DataSet dsComments)
        {
            bool result = false;

            Database db = DatabaseFactory.CreateDatabase(Constants.CONNECTIONSTRING);
            DbConnection connection = db.CreateConnection();
            connection.Open();
            DbTransaction transaction = connection.BeginTransaction();

            try
            {
                result = new CommentDAO().InsertUpdateDelete(dsComments, db, transaction);
                transaction.Commit();
            }
            catch (System.Exception ex)
            {
                transaction.Rollback();
                result = false;
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return result;
        }

        public List<FeedbackQuestion> SelectFeedbackQuestions()
        {
            List<FeedbackQuestion> feedbackQuestions = new List<FeedbackQuestion>();

            feedbackQuestions.Add(new FeedbackQuestion() { QuestionId = 1, Question = "Payment on time :" });
            feedbackQuestions.Add(new FeedbackQuestion() { QuestionId = 2, Question = "Cleanliness throughout stay :" });
            feedbackQuestions.Add(new FeedbackQuestion() { QuestionId = 3, Question = "Condition of house:" });
            feedbackQuestions.Add(new FeedbackQuestion() { QuestionId = 4, Question = "Responsiveness of student :" });
            feedbackQuestions.Add(new FeedbackQuestion() { QuestionId = 5, Question = "Friendliness :" });
            feedbackQuestions.Add(new FeedbackQuestion() { QuestionId = 6, Question = "Responsible :" });
            feedbackQuestions.Add(new FeedbackQuestion() { QuestionId = 7, Question = "Good Roommate :" });

            return feedbackQuestions;
        }

        public decimal CalculateFeedbackByUserRole(Enums.UserRoles userRoles)
        {
            decimal finalRatingValue = 0;

            if (userRoles == Enums.UserRoles.Landlord)
            {
                int index = 0;
                this.FeedbackQuestions[index++].QuestionWeight = 0.05M;
                this.FeedbackQuestions[index++].QuestionWeight = 0.25M;
                this.FeedbackQuestions[index++].QuestionWeight = 0.5M;
                this.FeedbackQuestions[index++].QuestionWeight = 0.05M;
                this.FeedbackQuestions[index++].QuestionWeight = 0.05M;
                this.FeedbackQuestions[index++].QuestionWeight = 0.1M;
                this.FeedbackQuestions[index++].QuestionWeight = Decimal.Zero;
                index = 0;

                foreach (FeedbackQuestion question in this.FeedbackQuestions)
                {
                    finalRatingValue += question.QuestionWeight * question.RatingValue;
                }
            }

            if (userRoles == Enums.UserRoles.Student)
            {
                int index = 0;
                this.FeedbackQuestions[index++].QuestionWeight = Decimal.Zero;
                this.FeedbackQuestions[index++].QuestionWeight = 0.2M;
                this.FeedbackQuestions[index++].QuestionWeight = 0.1M;
                this.FeedbackQuestions[index++].QuestionWeight = 0.1M;
                this.FeedbackQuestions[index++].QuestionWeight = 0.1M;
                this.FeedbackQuestions[index++].QuestionWeight = 0.2M;
                this.FeedbackQuestions[index++].QuestionWeight = 0.3M;
                index = 0;

                foreach (FeedbackQuestion question in this.FeedbackQuestions)
                {
                    finalRatingValue += question.QuestionWeight * question.RatingValue;
                }
            }

            return finalRatingValue;
        }

        public decimal GetOverrallFeedbackByContext(Enums.ContextType contextType, Guid contextId)
        {
            decimal returnVal;

            List<Comment> comments = CommentDAO.SelectCommentListByContext((int)contextType, contextId);
            comments.RemoveAll(comm => comm.CommentTypeId != (int)Enums.CommentType.Feedback);

            decimal totalFeedbackScore = 0;
            foreach (Comment comment in comments)
            {
                if (comment.RatingValue > 0)
                {
                    totalFeedbackScore += comment.RatingValue;
                }
            }

            if (totalFeedbackScore > 0)
            {
                returnVal = totalFeedbackScore / comments.Count();
            }
            else
            {
                returnVal = 0.1M;
            }

            return returnVal;
        }
    }
}
