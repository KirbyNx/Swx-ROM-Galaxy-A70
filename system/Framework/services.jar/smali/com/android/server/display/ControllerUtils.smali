.class public final Lcom/android/server/display/ControllerUtils;
.super Ljava/lang/Object;
.source "ControllerUtils.java"


# static fields
.field private static final CONLROLLER_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.smartmirroring"

.field private static final CONTROLLER_SERVICE_CLASS:Ljava/lang/String; = "com.samsung.android.smartmirroring.controller.ControllerService"

.field private static final TAG:Ljava/lang/String; = "ControllerUtils"

.field public static final VOLUME_KEY_DOWN:I = -0x1

.field public static final VOLUME_KEY_UP:I = 0x1

.field public static final VOLUME_MUTE:I = 0x2

.field public static final VOLUME_UNMUTE:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/display/ControllerUtils;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public isControllerServiceRunning()Z
    .registers 6

    .line 55
    iget-object v0, p0, Lcom/android/server/display/ControllerUtils;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 56
    .local v0, "manager":Landroid/app/ActivityManager;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 57
    .local v2, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.samsung.android.smartmirroring.controller.ControllerService"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 58
    const/4 v1, 0x1

    return v1

    .line 60
    .end local v2    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_31
    goto :goto_15

    .line 61
    :cond_32
    const/4 v1, 0x0

    return v1
.end method

.method public keyEventToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "keyEvent"    # I

    .line 65
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 66
    const-string v0, "VOLUME_KEY_DOWN"

    return-object v0

    .line 67
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 68
    const-string v0, "VOLUME_KEY_UP"

    return-object v0

    .line 69
    :cond_c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_12

    .line 70
    const-string v0, "VOLUME_MUTE"

    return-object v0

    .line 71
    :cond_12
    const/4 v0, 0x3

    if-ne p1, v0, :cond_18

    .line 72
    const-string v0, "VOLUME_UNMUTE"

    return-object v0

    .line 74
    :cond_18
    const-string v0, ""

    return-object v0
.end method

.method public startControllerService()V
    .registers 5

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1d524

    if-ge v0, v1, :cond_1d

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.smartmirroring"

    const-string v3, "com.samsung.android.smartmirroring.controller.ControllerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/android/server/display/ControllerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1d
    return-void
.end method

.method public stopControllerService()V
    .registers 5

    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.smartmirroring"

    const-string v3, "com.samsung.android.smartmirroring.controller.ControllerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 51
    iget-object v1, p0, Lcom/android/server/display/ControllerUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 52
    return-void
.end method
