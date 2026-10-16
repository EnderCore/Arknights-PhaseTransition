.class Lcom/tendcloud/tenddata/game/bd$a;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Ljava/nio/channels/FileLock;

.field private c:Ljava/util/concurrent/locks/Lock;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tendcloud/tenddata/game/be;)V
    .locals 0

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bd$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/bd$a;)Ljava/io/RandomAccessFile;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bd$a;->a:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/bd$a;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bd$a;->a:Ljava/io/RandomAccessFile;

    return-object p1
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/bd$a;Ljava/nio/channels/FileLock;)Ljava/nio/channels/FileLock;
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bd$a;->b:Ljava/nio/channels/FileLock;

    return-object p1
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/bd$a;Ljava/util/concurrent/locks/Lock;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bd$a;->c:Ljava/util/concurrent/locks/Lock;

    return-object p1
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/game/bd$a;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bd$a;->c:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/game/bd$a;)Ljava/nio/channels/FileLock;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bd$a;->b:Ljava/nio/channels/FileLock;

    return-object v0
.end method
