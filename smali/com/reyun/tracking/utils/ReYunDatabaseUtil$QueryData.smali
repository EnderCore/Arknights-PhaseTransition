.class public Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;
.super Ljava/lang/Object;
.source "ReYunDatabaseUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reyun/tracking/utils/ReYunDatabaseUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueryData"
.end annotation


# instance fields
.field public idList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public jsonStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/reyun/tracking/utils/ReYunDatabaseUtil;


# direct methods
.method public constructor <init>(Lcom/reyun/tracking/utils/ReYunDatabaseUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;->this$0:Lcom/reyun/tracking/utils/ReYunDatabaseUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/reyun/tracking/utils/ReYunDatabaseUtil;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;->this$0:Lcom/reyun/tracking/utils/ReYunDatabaseUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;->idList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/reyun/tracking/utils/ReYunDatabaseUtil$QueryData;->jsonStr:Ljava/lang/String;

    return-void
.end method
