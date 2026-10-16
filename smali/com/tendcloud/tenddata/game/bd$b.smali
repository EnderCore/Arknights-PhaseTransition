.class public final enum Lcom/tendcloud/tenddata/game/bd$b;
.super Ljava/lang/Enum;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lcom/tendcloud/tenddata/game/bd$b;

.field public static final enum b:Lcom/tendcloud/tenddata/game/bd$b;

.field public static final enum c:Lcom/tendcloud/tenddata/game/bd$b;

.field public static final enum d:Lcom/tendcloud/tenddata/game/bd$b;

.field public static final enum e:Lcom/tendcloud/tenddata/game/bd$b;

.field public static final enum f:Lcom/tendcloud/tenddata/game/bd$b;

.field public static final enum g:Lcom/tendcloud/tenddata/game/bd$b;

.field public static final enum h:Lcom/tendcloud/tenddata/game/bd$b;

.field public static final enum i:Lcom/tendcloud/tenddata/game/bd$b;

.field public static final enum j:Lcom/tendcloud/tenddata/game/bd$b;

.field public static final enum k:Lcom/tendcloud/tenddata/game/bd$b;

.field public static final enum l:Lcom/tendcloud/tenddata/game/bd$b;

.field private static final synthetic n:[Lcom/tendcloud/tenddata/game/bd$b;


# instance fields
.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tendcloud/tenddata/game/bd$b;

    const-string v1, "Cloud_Control_Lock_File"

    const-string v2, "Cloud_Control_Cache_Param"

    invoke-direct {v0, v1, v4, v2}, Lcom/tendcloud/tenddata/game/bd$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->a:Lcom/tendcloud/tenddata/game/bd$b;

    new-instance v0, Lcom/tendcloud/tenddata/game/bd$b;

    const-string v1, "AntiCheating_Switch_Lock_File"

    const-string v2, "AntiCheating_Switch_Value"

    invoke-direct {v0, v1, v5, v2}, Lcom/tendcloud/tenddata/game/bd$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->b:Lcom/tendcloud/tenddata/game/bd$b;

    new-instance v0, Lcom/tendcloud/tenddata/game/bd$b;

    const-string v1, "App_Lock_File"

    const-string v2, "__App_Synchronous_Lock__"

    invoke-direct {v0, v1, v6, v2}, Lcom/tendcloud/tenddata/game/bd$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->c:Lcom/tendcloud/tenddata/game/bd$b;

    new-instance v0, Lcom/tendcloud/tenddata/game/bd$b;

    const-string v1, "Tracking_Lock_File"

    const-string v2, "__Tracking_Synchronous_Lock__"

    invoke-direct {v0, v1, v7, v2}, Lcom/tendcloud/tenddata/game/bd$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->d:Lcom/tendcloud/tenddata/game/bd$b;

    new-instance v0, Lcom/tendcloud/tenddata/game/bd$b;

    const-string v1, "Env_Lock_File"

    const-string v2, "__Env_Synchronous_Lock__"

    invoke-direct {v0, v1, v8, v2}, Lcom/tendcloud/tenddata/game/bd$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->e:Lcom/tendcloud/tenddata/game/bd$b;

    new-instance v0, Lcom/tendcloud/tenddata/game/bd$b;

    const-string v1, "Game_Lock_File"

    const/4 v2, 0x5

    const-string v3, "__Game_Synchronous_Lock__"

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bd$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->f:Lcom/tendcloud/tenddata/game/bd$b;

    new-instance v0, Lcom/tendcloud/tenddata/game/bd$b;

    const-string v1, "Push_Lock_File"

    const/4 v2, 0x6

    const-string v3, "__Push_Synchronous_Lock__"

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bd$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->g:Lcom/tendcloud/tenddata/game/bd$b;

    new-instance v0, Lcom/tendcloud/tenddata/game/bd$b;

    const-string v1, "SMS_Lock_File"

    const/4 v2, 0x7

    const-string v3, "__SMS_Synchronous_Lock__"

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bd$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->h:Lcom/tendcloud/tenddata/game/bd$b;

    new-instance v0, Lcom/tendcloud/tenddata/game/bd$b;

    const-string v1, "EAuth_Lock_File"

    const/16 v2, 0x8

    const-string v3, "__EAuth_Synchronous_Lock__"

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bd$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->i:Lcom/tendcloud/tenddata/game/bd$b;

    new-instance v0, Lcom/tendcloud/tenddata/game/bd$b;

    const-string v1, "App_SQL_Lock_File"

    const/16 v2, 0x9

    const-string v3, "__AppSQL_Synchronous_Lock__"

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bd$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->j:Lcom/tendcloud/tenddata/game/bd$b;

    new-instance v0, Lcom/tendcloud/tenddata/game/bd$b;

    const-string v1, "BG_Lock_File"

    const/16 v2, 0xa

    const-string v3, "__BG_Synchronous_Lock__"

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bd$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->k:Lcom/tendcloud/tenddata/game/bd$b;

    new-instance v0, Lcom/tendcloud/tenddata/game/bd$b;

    const-string v1, "AntiCheating_Data_Lock_File"

    const/16 v2, 0xb

    const-string v3, "AntiCheating_Data_Value"

    invoke-direct {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bd$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->l:Lcom/tendcloud/tenddata/game/bd$b;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/tendcloud/tenddata/game/bd$b;

    sget-object v1, Lcom/tendcloud/tenddata/game/bd$b;->a:Lcom/tendcloud/tenddata/game/bd$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tendcloud/tenddata/game/bd$b;->b:Lcom/tendcloud/tenddata/game/bd$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tendcloud/tenddata/game/bd$b;->c:Lcom/tendcloud/tenddata/game/bd$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tendcloud/tenddata/game/bd$b;->d:Lcom/tendcloud/tenddata/game/bd$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tendcloud/tenddata/game/bd$b;->e:Lcom/tendcloud/tenddata/game/bd$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tendcloud/tenddata/game/bd$b;->f:Lcom/tendcloud/tenddata/game/bd$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tendcloud/tenddata/game/bd$b;->g:Lcom/tendcloud/tenddata/game/bd$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tendcloud/tenddata/game/bd$b;->h:Lcom/tendcloud/tenddata/game/bd$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tendcloud/tenddata/game/bd$b;->i:Lcom/tendcloud/tenddata/game/bd$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tendcloud/tenddata/game/bd$b;->j:Lcom/tendcloud/tenddata/game/bd$b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tendcloud/tenddata/game/bd$b;->k:Lcom/tendcloud/tenddata/game/bd$b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tendcloud/tenddata/game/bd$b;->l:Lcom/tendcloud/tenddata/game/bd$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tendcloud/tenddata/game/bd$b;->n:[Lcom/tendcloud/tenddata/game/bd$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TD"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bd$b;->m:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bd$b;->c:Lcom/tendcloud/tenddata/game/bd$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bd$b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/tendcloud/tenddata/game/bd$b;->d:Lcom/tendcloud/tenddata/game/bd$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bd$b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/tendcloud/tenddata/game/bd$b;->e:Lcom/tendcloud/tenddata/game/bd$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bd$b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/tendcloud/tenddata/game/bd$b;->f:Lcom/tendcloud/tenddata/game/bd$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bd$b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/tendcloud/tenddata/game/bd$b;->g:Lcom/tendcloud/tenddata/game/bd$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bd$b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/tendcloud/tenddata/game/bd$b;->h:Lcom/tendcloud/tenddata/game/bd$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bd$b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/tendcloud/tenddata/game/bd$b;->i:Lcom/tendcloud/tenddata/game/bd$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bd$b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/tendcloud/tenddata/game/bd$b;->j:Lcom/tendcloud/tenddata/game/bd$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bd$b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/tendcloud/tenddata/game/bd$b;->k:Lcom/tendcloud/tenddata/game/bd$b;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bd$b;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tendcloud/tenddata/game/bd$b;
    .locals 1

    const-class v0, Lcom/tendcloud/tenddata/game/bd$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/bd$b;

    return-object v0
.end method

.method public static values()[Lcom/tendcloud/tenddata/game/bd$b;
    .locals 1

    sget-object v0, Lcom/tendcloud/tenddata/game/bd$b;->n:[Lcom/tendcloud/tenddata/game/bd$b;

    invoke-virtual {v0}, [Lcom/tendcloud/tenddata/game/bd$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tendcloud/tenddata/game/bd$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bd$b;->m:Ljava/lang/String;

    return-object v0
.end method
