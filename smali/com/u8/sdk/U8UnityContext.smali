.class public Lcom/u8/sdk/U8UnityContext;
.super Lcom/onevcat/uniwebview/AndroidPlugin;
.source "U8UnityContext.java"


# static fields
.field public static final CALLBACK_GAMEOBJECT_NAME:Ljava/lang/String; = "(u8sdk_callback)"

.field public static final CALLBACK_INIT_FAIL:Ljava/lang/String; = "OnInitFail"

.field public static final CALLBACK_INIT_SUC:Ljava/lang/String; = "OnInitSuc"

.field public static final CALLBACK_LOGIN_FAIL:Ljava/lang/String; = "OnLoginFail"

.field public static final CALLBACK_LOGIN_SUC:Ljava/lang/String; = "OnLoginSuc"

.field public static final CALLBACK_LOGOUT:Ljava/lang/String; = "OnLogout"

.field public static final CALLBACK_PAY_FAIL:Ljava/lang/String; = "OnPayFail"

.field public static final CALLBACK_PAY_SUC:Ljava/lang/String; = "OnPaySuc"

.field public static final CALLBACK_SDK_ERROR:Ljava/lang/String; = "OnSDKError"

.field public static final CALLBACK_SWITCH_ACCOUNT:Ljava/lang/String; = "OnSwitchAccount"

.field private static final KEY_META_RPOXY_ACTIVITY:Ljava/lang/String; = "proxy_activity"

.field private static s_inst:Lcom/u8/sdk/U8UnityContext;


# instance fields
.field private m_proxyActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/u8/sdk/U8ProxyActivity;",
            ">;"
        }
    .end annotation
.end field

.field private m_u8MainListener:Lcom/u8/sdk/UnityU8SDKListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/u8/sdk/U8UnityContext;->s_inst:Lcom/u8/sdk/U8UnityContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    return-void
.end method

.method private parseGameData(Ljava/lang/String;)Lcom/u8/sdk/UserExtraData;
    .locals 4

    new-instance v0, Lcom/u8/sdk/UserExtraData;

    invoke-direct {v0}, Lcom/u8/sdk/UserExtraData;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "dataType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setDataType(I)V

    const-string v3, "roleID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setRoleID(Ljava/lang/String;)V

    const-string v3, "roleName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setRoleName(Ljava/lang/String;)V

    const-string v3, "roleLevel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setRoleLevel(Ljava/lang/String;)V

    const-string v3, "serverID"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setServerID(I)V

    const-string v3, "serverName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setServerName(Ljava/lang/String;)V

    const-string v3, "moneyNum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/u8/sdk/UserExtraData;->setMoneyNum(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parsePayParams(Ljava/lang/String;)Lcom/u8/sdk/PayParams;
    .locals 4

    new-instance v2, Lcom/u8/sdk/PayParams;

    invoke-direct {v2}, Lcom/u8/sdk/PayParams;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "productId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setProductId(Ljava/lang/String;)V

    const-string v3, "productName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setProductName(Ljava/lang/String;)V

    const-string v3, "productDesc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setProductDesc(Ljava/lang/String;)V

    const-string v3, "price"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setPrice(I)V

    const-string v3, "buyNum"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setBuyNum(I)V

    const-string v3, "coinNum"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setCoinNum(I)V

    const-string v3, "serverId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setServerId(Ljava/lang/String;)V

    const-string v3, "serverName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setServerName(Ljava/lang/String;)V

    const-string v3, "roleId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setRoleId(Ljava/lang/String;)V

    const-string v3, "roleName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setRoleName(Ljava/lang/String;)V

    const-string v3, "roleLevel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setRoleLevel(I)V

    const-string v3, "vip"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setVip(Ljava/lang/String;)V

    const-string v3, "orderID"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setOrderID(Ljava/lang/String;)V

    const-string v3, "worldID"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setWorldID(Ljava/lang/String;)V

    const-string v3, "extension"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setExtension(Ljava/lang/String;)V

    const-string v3, "token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setToken(Ljava/lang/String;)V

    const-string v3, "appKey"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/u8/sdk/PayParams;->setAppKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public exit()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8UnityContext$7;

    invoke-direct {v1, p0}, Lcom/u8/sdk/U8UnityContext$7;-><init>(Lcom/u8/sdk/U8UnityContext;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSDKMeta()Ljava/lang/String;
    .locals 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    :try_start_0
    const-string v3, "appID"

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getAppID()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "appKey"

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "channel"

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getCurrChannel()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "worldId"

    invoke-virtual {v2}, Lcom/u8/sdk/U8SDK;->getWorldId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "extension"

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/u8/sdk/plugin/U8User;->getExtensionForMeta()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "U8SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Serialize SDK meta with error :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/u8/sdk/CommonUtil;->parseExceptionInfo(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/u8/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initSDK()V
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/U8UnityContext;->m_u8MainListener:Lcom/u8/sdk/UnityU8SDKListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/u8/sdk/UnityU8SDKListener;

    invoke-direct {v0, p0}, Lcom/u8/sdk/UnityU8SDKListener;-><init>(Lcom/u8/sdk/U8UnityContext;)V

    iput-object v0, p0, Lcom/u8/sdk/U8UnityContext;->m_u8MainListener:Lcom/u8/sdk/UnityU8SDKListener;

    :cond_0
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    iget-object v1, p0, Lcom/u8/sdk/U8UnityContext;->m_u8MainListener:Lcom/u8/sdk/UnityU8SDKListener;

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->setSDKListener(Lcom/u8/sdk/base/IU8SDKListener;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/u8/sdk/U8SDK;->init(Landroid/app/Activity;)V

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onCreate()V

    return-void
.end method

.method public isSupportAccountCenter()Z
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    const-string v1, "showAccountCenter"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportExit()Z
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportLogin()Z
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    const-string v1, "login"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportLogout()Z
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    const-string v1, "logout"

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUserSupportMethod(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/u8/sdk/plugin/U8User;->isSupport(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public login()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8UnityContext$1;

    invoke-direct {v1, p0}, Lcom/u8/sdk/U8UnityContext$1;-><init>(Lcom/u8/sdk/U8UnityContext;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loginCustom(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8UnityContext$2;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/U8UnityContext$2;-><init>(Lcom/u8/sdk/U8UnityContext;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public logout()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8UnityContext$5;

    invoke-direct {v1, p0}, Lcom/u8/sdk/U8UnityContext$5;-><init>(Lcom/u8/sdk/U8UnityContext;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/u8/sdk/U8SDK;->onActivityResult(IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Lcom/onevcat/uniwebview/AndroidPlugin;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/U8ProxyActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/u8/sdk/U8ProxyActivity;->onProxyActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/U8ProxyActivity;

    invoke-virtual {v0, p1}, Lcom/u8/sdk/U8ProxyActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->onCreate(Landroid/os/Bundle;)V

    sget-object v12, Lcom/u8/sdk/U8UnityContext;->s_inst:Lcom/u8/sdk/U8UnityContext;

    if-nez v12, :cond_0

    sput-object p0, Lcom/u8/sdk/U8UnityContext;->s_inst:Lcom/u8/sdk/U8UnityContext;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/u8/sdk/U8UnityContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/u8/sdk/U8UnityContext;->getComponentName()Landroid/content/ComponentName;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v12, v9, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v13, "proxy_activity"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "\\|"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    array-length v6, v2

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v12, v2, v8

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v2, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/u8/sdk/U8UnityContext;->finish()V

    :cond_1
    return-void

    :catch_0
    move-exception v12

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_4

    array-length v12, v2

    if-lez v12, :cond_4

    array-length v13, v2

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v13, :cond_4

    aget-object v3, v2, v12

    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-class v14, Lcom/u8/sdk/U8ProxyActivity;

    invoke-virtual {v14, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_3

    new-instance v14, Ljava/lang/Exception;

    invoke-direct {v14}, Ljava/lang/Exception;-><init>()V

    throw v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v7

    const-string v14, "U8ProxyActivity"

    const-string v15, "%s is not a valid proxy activity"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/u8/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x1

    :try_start_2
    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Lcom/u8/sdk/U8UnityContext;

    aput-object v16, v14, v15

    invoke-virtual {v11, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    invoke-virtual {v4, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/u8/sdk/U8ProxyActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/u8/sdk/U8ProxyActivity;

    invoke-virtual {v1}, Lcom/u8/sdk/U8ProxyActivity;->onProxyCreate()V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->onDestroy()V

    sget-object v1, Lcom/u8/sdk/U8UnityContext;->s_inst:Lcom/u8/sdk/U8UnityContext;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    sput-object v1, Lcom/u8/sdk/U8UnityContext;->s_inst:Lcom/u8/sdk/U8UnityContext;

    :cond_0
    iget-object v1, p0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/U8ProxyActivity;

    invoke-virtual {v0}, Lcom/u8/sdk/U8ProxyActivity;->onProxyDestroy()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/u8/sdk/U8SDK;->onNewIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin;->onNewIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/U8ProxyActivity;

    invoke-virtual {v0, p1}, Lcom/u8/sdk/U8ProxyActivity;->onProxyNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->onPause()V

    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onPause()V

    iget-object v1, p0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/U8ProxyActivity;

    invoke-virtual {v0}, Lcom/u8/sdk/U8ProxyActivity;->onProxyPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->onRestart()V

    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onRestart()V

    iget-object v1, p0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/U8ProxyActivity;

    invoke-virtual {v0}, Lcom/u8/sdk/U8ProxyActivity;->onProxyRestart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->onResume()V

    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onResume()V

    iget-object v1, p0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/U8ProxyActivity;

    invoke-virtual {v0}, Lcom/u8/sdk/U8ProxyActivity;->onProxyResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->onStart()V

    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onStart()V

    iget-object v1, p0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/U8ProxyActivity;

    invoke-virtual {v0}, Lcom/u8/sdk/U8ProxyActivity;->onProxyStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->onStop()V

    invoke-super {p0}, Lcom/onevcat/uniwebview/AndroidPlugin;->onStop()V

    iget-object v1, p0, Lcom/u8/sdk/U8UnityContext;->m_proxyActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u8/sdk/U8ProxyActivity;

    invoke-virtual {v0}, Lcom/u8/sdk/U8ProxyActivity;->onProxyStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pay(Ljava/lang/String;)V
    .locals 3

    const-string v1, "U8 Pay"

    invoke-static {v1, p1}, Lcom/u8/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/u8/sdk/U8UnityContext;->parsePayParams(Ljava/lang/String;)Lcom/u8/sdk/PayParams;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/U8UnityContext$8;

    invoke-direct {v2, p0, v0}, Lcom/u8/sdk/U8UnityContext$8;-><init>(Lcom/u8/sdk/U8UnityContext;Lcom/u8/sdk/PayParams;)V

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const-string v0, "(u8sdk_callback)"

    invoke-static {v0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showAccountCenter()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8UnityContext$4;

    invoke-direct {v1, p0}, Lcom/u8/sdk/U8UnityContext$4;-><init>(Lcom/u8/sdk/U8UnityContext;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitExtraData(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/u8/sdk/U8UnityContext;->parseGameData(Ljava/lang/String;)Lcom/u8/sdk/UserExtraData;

    move-result-object v0

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    new-instance v2, Lcom/u8/sdk/U8UnityContext$6;

    invoke-direct {v2, p0, v0}, Lcom/u8/sdk/U8UnityContext$6;-><init>(Lcom/u8/sdk/U8UnityContext;Lcom/u8/sdk/UserExtraData;)V

    invoke-virtual {v1, v2}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public switchLogin()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/U8UnityContext$3;

    invoke-direct {v1, p0}, Lcom/u8/sdk/U8UnityContext$3;-><init>(Lcom/u8/sdk/U8UnityContext;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
