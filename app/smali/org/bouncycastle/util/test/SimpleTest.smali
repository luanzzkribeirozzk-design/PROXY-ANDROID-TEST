.class public abstract Lorg/bouncycastle/util/test/SimpleTest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/test/Test;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/util/test/SimpleTest$TestExceptionOperation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runTest(Lorg/bouncycastle/util/test/Test;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/bouncycastle/util/test/SimpleTest;->runTest(Lorg/bouncycastle/util/test/Test;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static runTest(Lorg/bouncycastle/util/test/Test;Ljava/io/PrintStream;)V
    .locals 2

    invoke-interface {p0}, Lorg/bouncycastle/util/test/Test;->perform()Lorg/bouncycastle/util/test/TestResult;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static runTests([Lorg/bouncycastle/util/test/Test;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/bouncycastle/util/test/SimpleTest;->runTests([Lorg/bouncycastle/util/test/Test;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static runTests([Lorg/bouncycastle/util/test/Test;Ljava/io/PrintStream;)V
    .locals 4

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_2

    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/bouncycastle/util/test/Test;->perform()Lorg/bouncycastle/util/test/TestResult;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v2}, Lorg/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "-----"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "All tests successful."

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed with "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " FAILURES:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=>  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/util/test/TestResult;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private success()Lorg/bouncycastle/util/test/TestResult;
    .locals 1

    const-string v0, "Okay"

    invoke-static {p0, v0}, Lorg/bouncycastle/util/test/SimpleTestResult;->successful(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected areEqual([BII[BII)Z
    .locals 1

    invoke-static/range {p1 .. p6}, Lorg/bouncycastle/util/Arrays;->areEqual([BII[BII)Z

    move-result v0

    return v0
.end method

.method protected areEqual([B[B)Z
    .locals 1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0
.end method

.method protected areEqual([[B[[B)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v3, p2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-object v3, p1, v0

    aget-object v4, p2, v0

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/util/test/SimpleTest;->areEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method protected fail(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected fail(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected fail(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected isEquals(II)V
    .locals 2

    if-eq p1, p2, :cond_0

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected isEquals(JJ)V
    .locals 3

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected isEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected isEquals(Ljava/lang/String;JJ)V
    .locals 2

    cmp-long v0, p2, p4

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected isEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0

    :cond_2
    if-nez p3, :cond_3

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0

    :cond_3
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected isEquals(Ljava/lang/String;ZZ)V
    .locals 2

    if-eq p2, p3, :cond_0

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected isEquals(ZZ)V
    .locals 2

    if-eq p1, p2, :cond_0

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected isTrue(Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected isTrue(Z)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    const-string v1, "no message"

    invoke-static {p0, v1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0

    :cond_0
    return-void
.end method

.method public perform()Lorg/bouncycastle/util/test/TestResult;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/util/test/SimpleTest;->performTest()V

    invoke-direct {p0}, Lorg/bouncycastle/util/test/SimpleTest;->success()Lorg/bouncycastle/util/test/TestResult;
    :try_end_0
    .catch Lorg/bouncycastle/util/test/TestFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/util/test/TestFailedException;->getResult()Lorg/bouncycastle/util/test/TestResult;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract performTest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected testException(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/util/test/SimpleTest$TestExceptionOperation;)Ljava/lang/Exception;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p3}, Lorg/bouncycastle/util/test/SimpleTest$TestExceptionOperation;->operation()V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/util/test/SimpleTest;->fail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/util/test/SimpleTest;->isTrue(Ljava/lang/String;Z)V

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    :goto_2
    invoke-virtual {p0, v1}, Lorg/bouncycastle/util/test/SimpleTest;->isTrue(Z)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
