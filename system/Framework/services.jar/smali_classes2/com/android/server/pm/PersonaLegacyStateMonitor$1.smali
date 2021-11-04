.class Lcom/android/server/pm/PersonaLegacyStateMonitor$1;
.super Landroid/os/ContainerStateReceiver;
.source "PersonaLegacyStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaLegacyStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaLegacyStateMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 288
    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 290
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 291
    return-void
.end method

.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 324
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 325
    return-void
.end method

.method public onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 332
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    # getter for: Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v0}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$200(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 335
    .local v0, "ownerUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 336
    .local v1, "ownerId":I
    iget-object v2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    # getter for: Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$300(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "pkgNames":[Ljava/lang/String;
    const-string v3, "Sending container removed intent to MDM for user "

    const-string v4, "PersonaManagerService::LegacyStateMonitor"

    if-eqz v2, :cond_58

    .line 338
    array-length v5, v2

    const/4 v6, 0x0

    :goto_32
    if-ge v6, v5, :cond_70

    aget-object v7, v2, v6

    .line 339
    .local v7, "pkgName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForRemoveContainer(Ljava/lang/String;II)V
    invoke-static {v8, v7, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$400(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V

    .line 340
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " Package is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .end local v7    # "pkgName":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 343
    :cond_58
    iget-object v5, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForRemoveContainer(Ljava/lang/String;II)V
    invoke-static {v5, v6, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$400(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V

    .line 344
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_70
    return-void
.end method

.method public onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    # getter for: Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$100(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 295
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_14

    .line 296
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, p2, v2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_4b

    .line 298
    :cond_14
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_24

    .line 299
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_4b

    .line 300
    :cond_24
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_34

    .line 301
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_4b

    .line 302
    :cond_34
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_44

    .line 303
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_4b

    .line 305
    :cond_44
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, p2, v2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 307
    :goto_4b
    return-void
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    # getter for: Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;
    invoke-static {v0}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$100(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 311
    .local v0, "ui":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_14

    .line 312
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, p2, v2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_43

    .line 314
    :cond_14
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_24

    .line 315
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_43

    .line 316
    :cond_24
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x10

    if-lez v1, :cond_34

    .line 317
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    goto :goto_43

    .line 318
    :cond_34
    iget v1, v0, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_43

    .line 319
    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    sget-object v3, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 321
    :cond_43
    :goto_43
    return-void
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I
    .param p3, "b"    # Landroid/os/Bundle;

    .line 328
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;->this$0:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    # invokes: Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    invoke-static {v0, p2, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V

    .line 329
    return-void
.end method
