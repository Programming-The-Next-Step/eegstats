library('eegstats')

context('Core eegstats functionality')

test_that('ReadingIn returns correct input matrix', {

    x <- matrix(c(2,3,3,4),nrow = 2, ncol = 2)
    ReadingIn(x)
    expect_equal(length(x), length(erpdata))

    expect_error(ReadingIn(c(1,2,3)))

    expect_true(is.matrix(erpdata))

})
