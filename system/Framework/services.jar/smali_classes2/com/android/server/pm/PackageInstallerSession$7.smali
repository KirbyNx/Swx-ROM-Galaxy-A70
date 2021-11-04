.class Lcom/android/server/pm/PackageInstallerSession$7;
.super Landroid/os/incremental/IStorageHealthListener$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field final synthetic val$systemDataLoader:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 3176
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$systemDataLoader:Z

    invoke-direct {p0}, Landroid/os/incremental/IStorageHealthListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHealthStatus(II)V
    .registers 6
    .param p1, "storageId"    # I
    .param p2, "status"    # I

    .line 3179
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1000(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # getter for: Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1400(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_2f

    .line 3189
    :cond_12
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1b

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1b

    if-eq p2, v1, :cond_20

    goto :goto_2e

    .line 3194
    :cond_1b
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->val$systemDataLoader:Z

    if-eqz v1, :cond_20

    .line 3196
    goto :goto_2e

    .line 3201
    :cond_20
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # setter for: Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1402(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    .line 3202
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/16 v1, -0x14

    const-string v2, "Image is missing pages required for installation."

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionVerificationFailure(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->access$1600(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    .line 3206
    :goto_2e
    return-void

    .line 3181
    :cond_2f
    :goto_2f
    if-eq p2, v1, :cond_32

    .line 3186
    return-void

    .line 3183
    :cond_32
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$7;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    # invokes: Lcom/android/server/pm/PackageInstallerSession;->onStorageUnhealthy()V
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->access$1500(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 3184
    return-void
.end method
