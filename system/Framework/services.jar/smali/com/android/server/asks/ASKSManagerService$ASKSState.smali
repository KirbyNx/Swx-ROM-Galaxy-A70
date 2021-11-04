.class final Lcom/android/server/asks/ASKSManagerService$ASKSState;
.super Ljava/lang/Object;
.source "ASKSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/asks/ASKSManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ASKSState"
.end annotation


# instance fields
.field deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

.field emMode:I

.field restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

.field uid:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3695
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->uid:I

    .line 3696
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 3697
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 3698
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 3701
    return-void
.end method

.method public constructor <init>(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    .line 3702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3695
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->uid:I

    .line 3696
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 3697
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 3698
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 3704
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 3705
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getEMMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 3706
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 3707
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 3730
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->uid:I

    .line 3731
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 3732
    iput v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    .line 3733
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 3734
    return-void
.end method

.method public getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;
    .registers 2

    .line 3715
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-object v0
.end method

.method public getEMMode()I
    .registers 2

    .line 3714
    iget v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    return v0
.end method

.method public getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;
    .registers 2

    .line 3713
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    return-object v0
.end method

.method public hasValue()Z
    .registers 4

    .line 3719
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 3720
    return v1

    .line 3721
    :cond_6
    iget v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    .line 3722
    return v1

    .line 3723
    :cond_c
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v0, :cond_11

    .line 3724
    return v1

    .line 3725
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V
    .registers 2
    .param p1, "d"    # Lcom/android/server/asks/ASKSManagerService$Deletable;

    .line 3711
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    return-void
.end method

.method public setEMMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 3710
    iput p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    return-void
.end method

.method public setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    .registers 2
    .param p1, "r"    # Lcom/android/server/asks/ASKSManagerService$Restrict;

    .line 3709
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 3737
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3738
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "ASKSState info {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3740
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    if-eqz v1, :cond_1d

    .line 3741
    const-string/jumbo v1, "restrict = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3742
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->restrict:Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3745
    :cond_1d
    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    .line 3746
    const-string v1, " emmode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3747
    iget v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->emMode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3750
    :cond_30
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    if-eqz v1, :cond_42

    .line 3751
    const-string v1, " deletable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3752
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;->deletable:Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$Deletable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3754
    :cond_42
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3756
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
