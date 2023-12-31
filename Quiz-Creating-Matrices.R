library(shiny)

# Define UI for the quiz application
ui <- fluidPage(
    titlePanel("Matrix Basics Quiz"),
    
    sidebarLayout(
        sidebarPanel(
            # Question 1
            radioButtons("q1", "1. What function is used to create matrices in R?",
                         choices = c("matrix()", "array()", "createMatrix()", "rMatrix()")),
            
            # Question 2
            radioButtons("q2", "2. By default, in which direction does the matrix() function fill the values?",
                         choices = c("Row-wise", "Column-wise")),
            
            # Question 3
            radioButtons("q3", "3. What will be the dimension of a matrix created by matrix(1:6, nrow = 2)?",
                         choices = c("2x3", "3x2", "2x2", "2x6")),

            # Question 4
            radioButtons("q4", "4. How do you specify the number of columns when creating a matrix?",
             choices = c("col.num", "ncol", "num.col", "colCount")),

            # Question 5
            radioButtons("q5", "5. How do you bind two vectors vertically to create a matrix?",
             choices = c("vbind()", "bind_vert()", "vertcat()", "rbind()")),

            # Question 6
            radioButtons("q6", "6. What is the result of dim(matrix(1:6, ncol=2))?",
             choices = c("c(2, 3)", "c(3, 2)", "c(6, 1)", "c(1, 6)")),

            # Question 7
            radioButtons("q7", "7. Which function can be used to create a diagonal matrix?",
             choices = c("diag()", "diagonalize()", "createDiag()", "getDiagonal()")),

            # Question 8
            radioButtons("q8", "8. If m is a matrix, which command retrieves its second column?",
             choices = c("m[2,]", "m[,2]", "m[2]", "m[2][,]")),

             # Question 9
            radioButtons("q9", "9. What will be the output of the following code?\nm <- matrix(1:12, nrow = 3)",
             choices = c("3x3 matrix with numbers 1 to 9", 
                         "3x4 matrix with numbers 1 to 12 filled column-wise", 
                         "4x3 matrix with numbers 1 to 12 filled row-wise", 
                         "3x4 matrix with numbers 1 to 12 filled row-wise")),

            # Question 10
            radioButtons("q10", "10. Which of the following codes creates a 2x5 matrix filled with numbers from 1 to 10 row-wise?",
             choices = c("matrix(1:10, ncol = 2)", 
                         "matrix(1:10, nrow = 5, byrow = TRUE)", 
                         "matrix(1:10, nrow = 2)", 
                         "matrix(1:10, ncol = 5, byrow = TRUE)")),

            # Question 11
            radioButtons("q11", "11. How do you create a 3x3 identity matrix (diagonal elements are 1, and off-diagonal elements are 0)?",
             choices = c("matrix(3,3)", 
                         "diag(3)", 
                         "matrix(1:3, nrow=3, ncol=3)", 
                         "identity(3)")),

            # Question 12
            radioButtons("q12", "12. Given vectors a = c(3, 2, 1) and b = c(6, 5, 4), which code binds them as columns to form a matrix?",
             choices = c("bind(a, b)", 
                         "rbind(a, b)", 
                         "cbind(a, b)", 
                         "matrix(c(a,b), ncol=2)")),

            # Question 13
            radioButtons("q13", "13. Which code will generate a 2x2 matrix like the following?\n     [,1] [,2]\n[1,]    4    3\n[2,]    2    1",
             choices = c("matrix(c(4, 2, 3, 1), nrow = 2, byrow = FALSE)", 
                         "matrix(c(4, 2, 3, 1), nrow = 2, byrow = TRUE)", 
                         "matrix(c(4, 3, 2, 1), ncol = 2)", 
                         "matrix(c(4, 3, 2, 1), ncol = 2, byrow = TRUE)")),

            # Question 14
            radioButtons("q14", "14. What is the output of the following code?\nmat <- matrix(seq(1, 9, by = 2), ncol = 2)",
             choices = c("2x2 matrix with numbers 1, 3, 5, 7", 
                         "3x2 matrix with numbers 1, 3, 5, 7, and 9 filled column-wise", 
                         "2x3 matrix with numbers 1, 3, 5, 7, and 9 filled row-wise", 
                         "3x3 matrix with numbers 1, 3, 5, 7, 9, and 11")),

            # Question 15
            radioButtons("q15", "15. What will be the dimension of the matrix created by this code?\nmatrix(1:20, ncol=4)",
             choices = c("4x5", "5x4", "20x1", "1x20")),

            # Question 16
            radioButtons("q16", "16. If mat is a matrix, which command retrieves its third row?",
             choices = c("mat[3,]", "mat[,3]", "mat[3]", "mat[3][,]")),

            # Question 17
            radioButtons("q17", "17. How do you bind two matrices, A and B, vertically?",
             choices = c("cbind(A, B)", "abind(A, B)", "rbind(A, B)", "bind(A, B)")),

            # Question 18
            radioButtons("q18", "18. Which of the following is not a valid way to initialize a matrix with zero values?",
             choices = c("matrix(0, nrow=3, ncol=3)", "matrix(0, 3, 3)", "array(0, dim=c(3,3))", "zeros(3,3)")),

            # Question 19
            radioButtons("q19", "19. If m1 is a 3x3 matrix and m2 is a 3x1 matrix, which operation will you use to multiply them?",
             choices = c("%*%", "*", "mul()", "cross()")),

            # Question 20
            radioButtons("q20", "20. How do you transform a matrix into its transpose?",
             choices = c("transpose(mat)", "t(mat)", "mat^T", "rev(mat)")),
            
            # Submit button
            actionButton("submit", "Submit Answers")
            
            ),
        
        mainPanel(
            textOutput("resultOutput")
        )
    )
)

# Define server logic
server <- function(input, output) {
    
    observeEvent(input$submit, {
        # Check answers
        correct_answers <- c("matrix()", "Column-wise", "2x3", "ncol", "rbind()", "c(3, 2)", "diag()", "m[,2]",
                     "3x4 matrix with numbers 1 to 12 filled column-wise", 
                     "matrix(1:10, ncol = 5, byrow = TRUE)", 
                     "diag(3)", 
                     "cbind(a, b)", 
                     "matrix(c(4, 2, 3, 1), nrow = 2, byrow = TRUE)", 
                     "3x2 matrix with numbers 1, 3, 5, 7, and 9 filled column-wise",
                     "5x4", "mat[3,]", "rbind(A, B)", "zeros(3,3)", "%*%", "t(mat)")

        user_answers <- c(input$q1, input$q2, input$q3, input$q4, input$q5, input$q6, input$q7, input$q8,
                  input$q9, input$q10, input$q11, input$q12, input$q13, input$q14, input$q15, input$q16, input$q17, input$q18, input$q19, input$q20)

        
        correct_count <- sum(user_answers == correct_answers)
        
        # Provide feedback
        output$resultOutput <- renderText({
            paste("You got", correct_count, "out of 20 questions right!")
        })
    })
}

# Run the application
shinyApp(ui = ui, server = server)
