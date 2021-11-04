.class Lcom/android/server/pm/AutoDisableHandler;
.super Ljava/lang/Object;
.source "AutoDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/AutoDisableHandler$ADHandler;,
        Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;
    }
.end annotation


# static fields
.field static final MARS_AD_UPDATE_PACKAGES_MSG:I = 0x1

.field static final TAG:Ljava/lang/String; = "AutoDisableHandler"


# instance fields
.field public mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;

.field mContext:Landroid/content/Context;

.field mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgMgrSvc"    # Lcom/android/server/pm/PackageManagerService;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/pm/AutoDisableHandler;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/server/pm/AutoDisableHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    .line 38
    new-instance v0, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;

    const-string v1, "AutoDisableThread"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;-><init>(Lcom/android/server/pm/AutoDisableHandler;Ljava/lang/String;I)V

    .line 39
    .local v0, "mADThread":Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;
    invoke-virtual {v0}, Lcom/android/server/pm/AutoDisableHandler$AutoDisableThread;->start()V

    .line 40
    return-void
.end method


# virtual methods
.method sendAutoDisabledAppStateChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    iget-object v1, p0, Lcom/android/server/pm/AutoDisableHandler;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/pm/AutoDisableHandler$ADHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 102
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 103
    iget-object v2, p0, Lcom/android/server/pm/AutoDisableHandler;->mAutoDisableHandler:Lcom/android/server/pm/AutoDisableHandler$ADHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/AutoDisableHandler$ADHandler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void
.end method
