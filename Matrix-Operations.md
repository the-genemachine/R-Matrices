# Matrix Operations

Matrices in R can undergo a variety of operations, both arithmetic and specialized. Here's a rundown of some common operations:

## Arithmetic Operations

### Addition

Add corresponding elements of two matrices. The matrices should be of the same size.

### Subtraction

Subtract corresponding elements of two matrices. The matrices should be of the same size.

### Multiplication

Element-wise multiplication (using *) multiplies corresponding elements of two matrices. Matrix multiplication (using %*%) computes the product as per the rules of linear algebra.

### Division

Divide corresponding elements of one matrix by another (element-wise).
Scalar Operations: You can add, subtract, multiply, or divide every element of a matrix by a scalar value.

### Matrix Transpose

Using the **t() function**, you can get the transpose of a matrix.

### Matrix Inversion

The **solve() function** can be used to find the inverse of a square matrix.

### Determinant

The **det() function** computes the determinant of a matrix.

### Eigenvalues and Eigenvectors

**eigen() function** can compute the eigenvalues and eigenvectors of a matrix.
Row and Column Operations:

### Sum

 **rowSums() and colSums()** compute the sum of elements across rows or columns, respectively.

### Means

 **rowMeans() and colMeans()** compute the mean of elements across rows or columns.

### Apply

 The **apply() function** can apply a function to rows or columns of a matrix.

## Matrix Decompositions

### LU decomposition

lu() from the Matrix package.

### Cholesky decomposition

chol().

### QR decomposition

qr().

### Singular Value Decomposition (SVD)

svd().

## Diagonal Extraction and Creation

**diag()** retrieves or sets the diagonal of a matrix. When used with a vector, diag() creates a diagonal matrix with elements of the vector as the diagonal.

### Matrix Binding

**rbind() and cbind()** can be used to bind matrices by rows or columns, respectively.

## Matrix Subset

You can extract subsets of a matrix using indexing, for example: matrix[1:2, 3:4].

## Matrix Dimensions

### nrow(), ncol()

Return the number of rows or columns.

### dim()

Returns the dimensions of a matrix.

### Determining if an Object is a Matrix

**is.matrix():** Checks if an object is a matrix.

Remember, while performing operations like addition, subtraction, and element-wise multiplication or division, the matrices involved must have the same dimensions, unless you're leveraging broadcasting features provided by certain packages.

Additionally, for matrix multiplication using %*%, the number of columns in the first matrix must match the number of rows in the second matrix.
