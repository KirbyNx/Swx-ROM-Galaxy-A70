.class final Lcom/android/server/pm/permission/PermissionsState$PermissionData;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionData"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPerm:Lcom/android/server/pm/permission/BasePermission;

.field private mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/BasePermission;)V
    .registers 3
    .param p1, "perm"    # Lcom/android/server/pm/permission/BasePermission;

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    .line 783
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    .line 787
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    .line 788
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/PermissionsState$PermissionData;)V
    .registers 9
    .param p1, "other"    # Lcom/android/server/pm/permission/PermissionsState$PermissionData;

    .line 791
    iget-object v0, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/permission/BasePermission;)V

    .line 793
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    :try_start_8
    iget-object v1, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 795
    .local v1, "otherStateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_2c

    .line 796
    iget-object v3, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 797
    .local v3, "otherUserId":I
    iget-object v4, p1, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 798
    .local v4, "otherState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    invoke-direct {v6, v4}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)V

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 795
    .end local v3    # "otherUserId":I
    .end local v4    # "otherState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 800
    .end local v1    # "otherStateCount":I
    .end local v2    # "i":I
    :cond_2c
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method private isCompatibleUserId(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 928
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isDefault()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermissionKey(I)Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method private isInstallPermission()Z
    .registers 4

    .line 932
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    const/4 v2, -0x1

    .line 933
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 932
    :goto_14
    return v1
.end method

.method public static isInstallPermissionKey(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 890
    const/4 v0, -0x1

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 3
    .param p1, "userId"    # I

    .line 804
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/BasePermission;->computeGids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFlags(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 874
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 875
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 876
    .local v1, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v1, :cond_13

    .line 877
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$200(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v2

    monitor-exit v0

    return v2

    .line 879
    :cond_13
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 880
    .end local v1    # "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public getPermissionState(I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .registers 4
    .param p1, "userId"    # I

    .line 868
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 869
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    monitor-exit v0

    return-object v1

    .line 870
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public grant(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 823
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 824
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 825
    monitor-exit v0

    return v2

    .line 828
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 829
    monitor-exit v0

    return v2

    .line 832
    :cond_14
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 833
    .local v1, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-nez v1, :cond_2f

    .line 834
    new-instance v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 835
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 838
    :cond_2f
    const/4 v2, 0x1

    # setter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z
    invoke-static {v1, v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z

    .line 840
    # invokes: Lcom/android/server/pm/permission/PermissionsState;->invalidateCache()V
    invoke-static {}, Lcom/android/server/pm/permission/PermissionsState;->access$100()V

    .line 841
    monitor-exit v0

    return v2

    .line 842
    .end local v1    # "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public isDefault()Z
    .registers 3

    .line 884
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    monitor-exit v0

    return v1

    .line 886
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public isGranted(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 808
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 810
    const/4 p1, -0x1

    .line 813
    :cond_a
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 814
    .local v1, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-nez v1, :cond_17

    .line 815
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 818
    :cond_17
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z
    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$000(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 819
    .end local v1    # "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public revoke(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 846
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 847
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 848
    monitor-exit v0

    return v2

    .line 851
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 852
    monitor-exit v0

    return v2

    .line 855
    :cond_14
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 856
    .local v1, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    # setter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mGranted:Z
    invoke-static {v1, v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$002(Lcom/android/server/pm/permission/PermissionsState$PermissionState;Z)Z

    .line 858
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 859
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 862
    :cond_2a
    # invokes: Lcom/android/server/pm/permission/PermissionsState;->invalidateCache()V
    invoke-static {}, Lcom/android/server/pm/permission/PermissionsState;->access$100()V

    .line 863
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 864
    .end local v1    # "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public updateFlags(III)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .line 894
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 896
    const/4 p1, -0x1

    .line 899
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 900
    monitor-exit v0

    return v2

    .line 903
    :cond_13
    and-int v1, p3, p2

    .line 906
    .local v1, "newFlags":I
    # invokes: Lcom/android/server/pm/permission/PermissionsState;->invalidateCache()V
    invoke-static {}, Lcom/android/server/pm/permission/PermissionsState;->access$100()V

    .line 908
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 909
    .local v3, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    const/4 v4, 0x1

    if-eqz v3, :cond_45

    .line 910
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$200(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v5

    .line 911
    .local v5, "oldFlags":I
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$200(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v6

    not-int v7, p2

    and-int/2addr v6, v7

    or-int/2addr v6, v1

    # setter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v3, v6}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$202(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I

    .line 912
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 913
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 915
    :cond_3c
    # getter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$200(Lcom/android/server/pm/permission/PermissionsState$PermissionState;)I

    move-result v6

    if-eq v6, v5, :cond_43

    move v2, v4

    :cond_43
    monitor-exit v0

    return v2

    .line 916
    .end local v5    # "oldFlags":I
    :cond_45
    if-eqz v1, :cond_5c

    .line 917
    new-instance v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/permission/BasePermission;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    .line 918
    .end local v3    # "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v2, "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    # setter for: Lcom/android/server/pm/permission/PermissionsState$PermissionState;->mFlags:I
    invoke-static {v2, v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->access$202(Lcom/android/server/pm/permission/PermissionsState$PermissionState;I)I

    .line 919
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 920
    monitor-exit v0

    return v4

    .line 923
    .end local v2    # "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v3    # "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :cond_5c
    monitor-exit v0

    return v2

    .line 924
    .end local v1    # "newFlags":I
    .end local v3    # "userState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_3 .. :try_end_60} :catchall_5e

    throw v1
.end method
