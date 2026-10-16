.class public Lcom/ta/utdid2/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/utdid2/a/a/b$c;,
        Lcom/ta/utdid2/a/a/b$b;,
        Lcom/ta/utdid2/a/a/b$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/ta/utdid2/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ta/utdid2/a/a/b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ta/utdid2/a/a/b;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/ta/utdid2/a/a/b;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v1, Lcom/ta/utdid2/a/a/b$b;

    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    invoke-direct {v1, p3, v0}, Lcom/ta/utdid2/a/a/b$b;-><init>(I[B)V

    .line 156
    const/4 v0, 0x1

    invoke-virtual {v1, p0, p1, p2, v0}, Lcom/ta/utdid2/a/a/b$b;->process([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad base-64"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget v0, v1, Lcom/ta/utdid2/a/a/b$b;->op:I

    iget-object v2, v1, Lcom/ta/utdid2/a/a/b$b;->output:[B

    array-length v2, v2

    if-ne v0, v2, :cond_1

    .line 162
    iget-object v0, v1, Lcom/ta/utdid2/a/a/b$b;->output:[B

    .line 169
    :goto_0
    return-object v0

    .line 167
    :cond_1
    iget v0, v1, Lcom/ta/utdid2/a/a/b$b;->op:I

    new-array v0, v0, [B

    .line 168
    iget-object v2, v1, Lcom/ta/utdid2/a/a/b$b;->output:[B

    iget v1, v1, Lcom/ta/utdid2/a/a/b$b;->op:I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static encode([BI)[B
    .locals 2

    .prologue
    .line 486
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/ta/utdid2/a/a/b;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Assert"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 501
    new-instance v3, Lcom/ta/utdid2/a/a/b$c;

    const/4 v0, 0x0

    invoke-direct {v3, p3, v0}, Lcom/ta/utdid2/a/a/b$c;-><init>(I[B)V

    .line 504
    div-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 507
    iget-boolean v1, v3, Lcom/ta/utdid2/a/a/b$c;->do_padding:Z

    if-eqz v1, :cond_2

    .line 508
    rem-int/lit8 v1, p2, 0x3

    if-lez v1, :cond_0

    .line 509
    add-int/lit8 v0, v0, 0x4

    .line 525
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v1, v3, Lcom/ta/utdid2/a/a/b$c;->do_newline:Z

    if-eqz v1, :cond_1

    if-lez p2, :cond_1

    .line 526
    add-int/lit8 v1, p2, -0x1

    div-int/lit8 v1, v1, 0x39

    add-int/lit8 v4, v1, 0x1

    iget-boolean v1, v3, Lcom/ta/utdid2/a/a/b$c;->do_cr:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    :goto_1
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 530
    :cond_1
    new-array v1, v0, [B

    iput-object v1, v3, Lcom/ta/utdid2/a/a/b$c;->output:[B

    .line 531
    invoke-virtual {v3, p0, p1, p2, v2}, Lcom/ta/utdid2/a/a/b$c;->process([BIIZ)Z

    .line 533
    sget-boolean v1, Lcom/ta/utdid2/a/a/b;->a:Z

    if-nez v1, :cond_4

    iget v1, v3, Lcom/ta/utdid2/a/a/b$c;->op:I

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 512
    :cond_2
    rem-int/lit8 v1, p2, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 516
    :pswitch_1
    add-int/lit8 v0, v0, 0x2

    .line 517
    goto :goto_0

    .line 519
    :pswitch_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 526
    goto :goto_1

    .line 535
    :cond_4
    iget-object v0, v3, Lcom/ta/utdid2/a/a/b$c;->output:[B

    return-object v0

    .line 512
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 3

    .prologue
    .line 450
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/ta/utdid2/a/a/b;->encode([BI)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 451
    :catch_0
    move-exception v0

    .line 453
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
