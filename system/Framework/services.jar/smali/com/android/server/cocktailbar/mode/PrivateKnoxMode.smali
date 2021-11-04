.class public Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;
.super Lcom/android/server/cocktailbar/mode/AbsPrivateMode;
.source "PrivateKnoxMode.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentUserId:I

.field private mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->TAG:Ljava/lang/String;

    .line 20
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "br"    # Landroid/content/BroadcastReceiver;
    .param p4, "listener"    # Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;
    .param p5, "serviceListener"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/cocktailbar/mode/AbsPrivateMode;-><init>(Landroid/content/Context;ILandroid/content/BroadcastReceiver;Lcom/android/server/cocktailbar/mode/CocktailBarMode$OnCocktailBarModeListener;)V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    .line 29
    iput-object p5, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const-string v1, "com.samsung.container.LAUNCH_INFO"

    const/4 v2, 0x0

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->registerBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getCocktailBarType()I
    .registers 2

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method getDefinedCocktailType()I
    .registers 2

    .line 87
    const/4 v0, 0x2

    return v0
.end method

.method getDefinedPrivateModeName()Ljava/lang/String;
    .registers 2

    .line 92
    const-string/jumbo v0, "knoxmode"

    return-object v0
.end method

.method isEnableMode()Z
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onBroadcastReceived(Landroid/content/Intent;)I
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;

    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.knox.container.action.launchinfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 39
    const/4 v1, -0x1

    const-string/jumbo v2, "userId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, "userId":I
    sget-boolean v2, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->DEBUG:Z

    if-eqz v2, :cond_2e

    .line 41
    sget-object v2, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INTENT_ACTION_LAUNCH_INFO : userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_2e
    iget-object v2, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    const/4 v10, 0x1

    if-nez v2, :cond_38

    .line 44
    return v10

    .line 46
    :cond_38
    const/4 v2, 0x0

    .line 47
    .local v2, "currentUserType":I
    const/4 v3, 0x0

    .line 48
    .local v3, "newUserType":I
    const/4 v4, 0x0

    .line 49
    .local v4, "modeId":I
    const/16 v5, 0x64

    if-lt v1, v5, :cond_4d

    .line 50
    iget v6, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    if-ge v6, v5, :cond_45

    .line 51
    const/4 v2, 0x1

    goto :goto_47

    .line 53
    :cond_45
    const/16 v2, 0x100

    .line 55
    :goto_47
    const/16 v3, 0x100

    .line 56
    const/4 v4, 0x2

    move v11, v3

    move v12, v4

    goto :goto_5d

    .line 57
    :cond_4d
    iget v6, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    if-lt v6, v5, :cond_5b

    if-ge v1, v5, :cond_5b

    .line 58
    const/16 v2, 0x100

    .line 59
    const/16 v3, 0x100

    .line 60
    const/4 v4, 0x2

    move v11, v3

    move v12, v4

    goto :goto_5d

    .line 62
    :cond_5b
    move v11, v3

    move v12, v4

    .end local v3    # "newUserType":I
    .end local v4    # "modeId":I
    .local v11, "newUserType":I
    .local v12, "modeId":I
    :goto_5d
    iget-object v3, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mServiceListener:Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;

    iget v4, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    const/4 v9, 0x0

    move v5, v1

    move v6, v2

    move v7, v11

    move v8, v12

    invoke-interface/range {v3 .. v9}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceListener;->onSwitchUser(IIIIILandroid/os/IRemoteCallback;)V

    .line 64
    iput v1, p0, Lcom/android/server/cocktailbar/mode/PrivateKnoxMode;->mCurrentUserId:I

    .line 65
    return v10

    .line 82
    .end local v1    # "userId":I
    .end local v2    # "currentUserType":I
    .end local v11    # "newUserType":I
    .end local v12    # "modeId":I
    :cond_6c
    const/4 v1, 0x0

    return v1
.end method
