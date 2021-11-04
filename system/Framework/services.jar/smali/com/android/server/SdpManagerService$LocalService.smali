.class final Lcom/android/server/SdpManagerService$LocalService;
.super Lcom/android/server/sdp/SdpManagerInternal;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService;)V
    .registers 2

    .line 5001
    iput-object p1, p0, Lcom/android/server/SdpManagerService$LocalService;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0}, Lcom/android/server/sdp/SdpManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/SdpManagerService;
    .param p2, "x1"    # Lcom/android/server/SdpManagerService$1;

    .line 5001
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$LocalService;-><init>(Lcom/android/server/SdpManagerService;)V

    return-void
.end method


# virtual methods
.method public getMasterKeyVersion(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 5025
    iget-object v0, p0, Lcom/android/server/SdpManagerService$LocalService;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->getMasterKeyVersion(I)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService;->access$5600(Lcom/android/server/SdpManagerService;I)I

    move-result v0

    return v0
.end method

.method public setMasterKeyVersion(II)V
    .registers 4
    .param p1, "version"    # I
    .param p2, "userId"    # I

    .line 5031
    iget-object v0, p0, Lcom/android/server/SdpManagerService$LocalService;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->setMasterKeyVersion(II)V
    invoke-static {v0, p1, p2}, Lcom/android/server/SdpManagerService;->access$5700(Lcom/android/server/SdpManagerService;II)V

    .line 5032
    return-void
.end method

.method public setSdpPolicy(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 5005
    iget-object v0, p0, Lcom/android/server/SdpManagerService$LocalService;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$5500(Lcom/android/server/SdpManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    .line 5006
    .local v0, "epm":Lcom/android/server/EnterprisePartitionManager;
    invoke-virtual {v0, p1}, Lcom/android/server/EnterprisePartitionManager;->setSdpPolicy(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 5007
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "setSdpPolicy failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    const/4 v1, 0x0

    return v1

    .line 5010
    :cond_1a
    const/4 v1, 0x1

    return v1
.end method

.method public setSdpPolicyToPath(ILjava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 5015
    iget-object v0, p0, Lcom/android/server/SdpManagerService$LocalService;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$5500(Lcom/android/server/SdpManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    .line 5016
    .local v0, "epm":Lcom/android/server/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/EnterprisePartitionManager;->setSdpPolicyToPath(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 5017
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "setSdpPolicyToPath failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5018
    const/4 v1, 0x0

    return v1

    .line 5020
    :cond_1a
    const/4 v1, 0x1

    return v1
.end method

.method public updateMasterKey([B[BI)Z
    .registers 5
    .param p1, "newMK"    # [B
    .param p2, "oldMK"    # [B
    .param p3, "userId"    # I

    .line 5036
    iget-object v0, p0, Lcom/android/server/SdpManagerService$LocalService;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->rewrapSdpKeys([B[BI)Z
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->access$5800(Lcom/android/server/SdpManagerService;[B[BI)Z

    move-result v0

    return v0
.end method
