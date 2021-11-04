.class Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionToOpSynchroniser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    }
.end annotation


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private final mOpsToAllow:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToForeground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToIgnore:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRuntimePermissionInfos:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/Context;)V
    .registers 9
    .param p2, "context"    # Landroid/content/Context;

    .line 619
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    .line 599
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    .line 608
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    .line 617
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    .line 620
    iput-object p2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 621
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 622
    const-class p1, Landroid/app/AppOpsManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 623
    const-class p1, Landroid/app/AppOpsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManagerInternal;

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 625
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimePermissionInfos:Landroid/util/ArrayMap;

    .line 626
    const-class p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 628
    .local p1, "permissionManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    nop

    .line 629
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionsWithProtection(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 631
    .local v0, "permissionInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 632
    .local v1, "permissionInfosSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_57
    if-ge v2, v1, :cond_69

    .line 633
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 634
    .local v3, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimePermissionInfos:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .end local v3    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 636
    .end local v2    # "i":I
    :cond_69
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 579
    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->syncPackages()V

    return-void
.end method

.method private addAppOps(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionName"    # Ljava/lang/String;

    .line 698
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimePermissionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    .line 699
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    if-nez v0, :cond_b

    .line 700
    return-void

    .line 702
    :cond_b
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPermissionAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V

    .line 703
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addExtraAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V

    .line 704
    return-void
.end method

.method private addExtraAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V
    .registers 11
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 796
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 797
    return-void

    .line 800
    :cond_7
    iget-object v0, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 801
    .local v0, "permissionName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 803
    invoke-virtual {v3}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 802
    invoke-static {v1, v2, p2, v3, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v1

    .line 804
    .local v1, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    invoke-virtual {v1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->getExtraAppOpCode()I

    move-result v2

    .line 805
    .local v2, "extraOpCode":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1f

    .line 806
    return-void

    .line 809
    :cond_1f
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 810
    .local v3, "uid":I
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 811
    .local v4, "packageName":Ljava/lang/String;
    new-instance v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v5, p0, v3, v4, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    .line 812
    .local v5, "extraOpToChange":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    invoke-virtual {v1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayAllowExtraAppOp()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 813
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 815
    :cond_36
    invoke-virtual {v1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayDenyExtraAppOpIfGranted()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 816
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    .line 818
    :cond_42
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    :goto_47
    return-void
.end method

.method private addPermissionAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)V
    .registers 15
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 708
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_7

    .line 709
    return-void

    .line 712
    :cond_7
    iget-object v0, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 713
    .local v0, "permissionName":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 714
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 715
    invoke-virtual {v3}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 714
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    .line 716
    .local v2, "permissionFlags":I
    and-int/lit8 v3, v2, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1f

    move v3, v4

    goto :goto_20

    :cond_1f
    move v3, v5

    .line 717
    .local v3, "isReviewRequired":Z
    :goto_20
    if-eqz v3, :cond_23

    .line 718
    return-void

    .line 723
    :cond_23
    # invokes: Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->access$800(Ljava/lang/String;)I

    move-result v6

    .line 724
    .local v6, "appOpCode":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2b

    .line 726
    return-void

    .line 730
    :cond_2b
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z

    move-result v7

    .line 731
    .local v7, "shouldGrantAppOp":Z
    const/4 v8, 0x4

    if-eqz v7, :cond_52

    .line 732
    iget-object v9, p3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v9, :cond_50

    .line 733
    iget-object v9, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mRuntimePermissionInfos:Landroid/util/ArrayMap;

    iget-object v10, p3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionInfo;

    .line 735
    .local v9, "backgroundPermissionInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v9, :cond_4a

    .line 736
    invoke-direct {p0, p1, p2, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z

    move-result v10

    if-eqz v10, :cond_4a

    move v10, v4

    goto :goto_4b

    :cond_4a
    move v10, v5

    .line 737
    .local v10, "shouldGrantBackgroundAppOp":Z
    :goto_4b
    if-eqz v10, :cond_4e

    goto :goto_4f

    :cond_4e
    move v5, v8

    .line 738
    .end local v9    # "backgroundPermissionInfo":Landroid/content/pm/PermissionInfo;
    .end local v10    # "shouldGrantBackgroundAppOp":Z
    .local v5, "appOpMode":I
    :goto_4f
    goto :goto_53

    .line 739
    .end local v5    # "appOpMode":I
    :cond_50
    const/4 v5, 0x0

    .restart local v5    # "appOpMode":I
    goto :goto_53

    .line 742
    .end local v5    # "appOpMode":I
    :cond_52
    const/4 v5, 0x1

    .line 745
    .restart local v5    # "appOpMode":I
    :goto_53
    iget-object v9, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 746
    .local v9, "uid":I
    new-instance v10, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    invoke-direct {v10, p0, v9, v1, v6}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;ILjava/lang/String;I)V

    .line 747
    .local v10, "opToChange":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    if-eqz v5, :cond_6f

    if-eq v5, v4, :cond_69

    if-eq v5, v8, :cond_63

    goto :goto_75

    .line 752
    :cond_63
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    goto :goto_75

    .line 755
    :cond_69
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 749
    :cond_6f
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    nop

    .line 758
    :goto_75
    return-void
.end method

.method private setUidMode(IIILjava/lang/String;)V
    .registers 13
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 887
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 889
    .local v0, "oldMode":I
    if-eq v0, p3, :cond_35

    .line 890
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 891
    # getter for: Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;
    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->access$900(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v2

    .line 890
    invoke-virtual {v1, p1, p2, p3, v2}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 892
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    .line 894
    .local v1, "newMode":I
    if-eq v1, p3, :cond_35

    .line 898
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    .line 899
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v6

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    # getter for: Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;
    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService;->access$900(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v7

    .line 898
    move v3, p1

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManagerInternal;->setModeFromPermissionPolicy(IILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V

    .line 902
    .end local v1    # "newMode":I
    :cond_35
    return-void
.end method

.method private setUidModeAllowed(IILjava/lang/String;)V
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 860
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 861
    return-void
.end method

.method private setUidModeForeground(IILjava/lang/String;)V
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 864
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 865
    return-void
.end method

.method private setUidModeIgnored(IILjava/lang/String;)V
    .registers 5
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 868
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidMode(IIILjava/lang/String;)V

    .line 869
    return-void
.end method

.method private setUidModeIgnoredIfNotAllowed(IILjava/lang/String;)Z
    .registers 8
    .param p1, "opCode"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 873
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {p1}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/app/AppOpsManager;->unsafeCheckOpRaw(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 875
    .local v0, "currentMode":I
    if-eqz v0, :cond_1b

    .line 876
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    .line 877
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mAppOpsManagerInternal:Landroid/app/AppOpsManagerInternal;

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 878
    # getter for: Lcom/android/server/policy/PermissionPolicyService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;
    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService;->access$900(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/internal/app/IAppOpsCallback;

    move-result-object v3

    .line 877
    invoke-virtual {v2, p1, p2, v1, v3}, Landroid/app/AppOpsManagerInternal;->setUidModeFromPermissionPolicy(IIILcom/android/internal/app/IAppOpsCallback;)V

    .line 880
    :cond_1a
    return v1

    .line 882
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method private shouldGrantAppOp(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/content/pm/PermissionInfo;)Z
    .registers 13
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p3, "permissionInfo"    # Landroid/content/pm/PermissionInfo;

    .line 762
    iget-object v0, p3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 763
    .local v0, "permissionName":Ljava/lang/String;
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 764
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_10

    move v2, v3

    goto :goto_11

    :cond_10
    move v2, v4

    .line 766
    .local v2, "isGranted":Z
    :goto_11
    if-nez v2, :cond_14

    .line 767
    return v4

    .line 770
    :cond_14
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 771
    invoke-virtual {v6}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    .line 770
    invoke-virtual {v5, v0, v1, v6}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v5

    .line 772
    .local v5, "permissionFlags":I
    and-int/lit8 v6, v5, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_28

    move v6, v3

    goto :goto_29

    :cond_28
    move v6, v4

    .line 774
    .local v6, "isRevokedCompat":Z
    :goto_29
    if-eqz v6, :cond_2c

    .line 775
    return v4

    .line 778
    :cond_2c
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v7

    if-eqz v7, :cond_40

    .line 779
    and-int/lit16 v7, v5, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_3a

    move v7, v3

    goto :goto_3b

    :cond_3a
    move v7, v4

    .line 782
    .local v7, "shouldApplyRestriction":Z
    :goto_3b
    if-nez v7, :cond_3e

    goto :goto_3f

    :cond_3e
    move v3, v4

    :goto_3f
    return v3

    .line 783
    .end local v7    # "shouldApplyRestriction":Z
    :cond_40
    invoke-virtual {p3}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 784
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mContext:Landroid/content/Context;

    .line 786
    invoke-virtual {v7}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    .line 785
    invoke-static {v3, v4, p2, v7, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v3

    .line 788
    .local v3, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    invoke-virtual {v3}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->mayGrantPermission()Z

    move-result v4

    return v4

    .line 790
    .end local v3    # "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    :cond_59
    return v3
.end method

.method private syncPackages()V
    .registers 13

    .line 647
    new-instance v0, Landroid/util/LongSparseLongArray;

    invoke-direct {v0}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 649
    .local v0, "alreadySetAppOps":Landroid/util/LongSparseLongArray;
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 650
    .local v1, "allowCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const-wide/16 v3, 0x1

    if-ge v2, v1, :cond_2f

    .line 651
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToAllow:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 653
    .local v5, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v6, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v7, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v8, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeAllowed(IILjava/lang/String;)V

    .line 654
    iget v6, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v7, v5, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v6, v7}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 650
    .end local v5    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 657
    .end local v2    # "i":I
    :cond_2f
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 658
    .local v2, "foregroundCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_36
    if-ge v5, v2, :cond_66

    .line 659
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToForeground:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 660
    .local v6, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_4f

    .line 661
    goto :goto_63

    .line 664
    :cond_4f
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v9, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeForeground(IILjava/lang/String;)V

    .line 665
    iget v7, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v8, v6, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v7, v8}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v7

    invoke-virtual {v0, v7, v8, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 658
    .end local v6    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    :goto_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 668
    .end local v5    # "i":I
    :cond_66
    iget-object v5, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 669
    .local v5, "ignoreCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6d
    if-ge v6, v5, :cond_9d

    .line 670
    iget-object v7, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnore:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 671
    .local v7, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v8, v9}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v8

    if-ltz v8, :cond_86

    .line 672
    goto :goto_9a

    .line 675
    :cond_86
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v10, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnored(IILjava/lang/String;)V

    .line 676
    iget v8, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v9, v7, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v8, v9}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 669
    .end local v7    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    :goto_9a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6d

    .line 679
    .end local v6    # "i":I
    :cond_9d
    iget-object v6, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 680
    .local v6, "ignoreIfNotAllowedCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a4
    if-ge v7, v6, :cond_d7

    .line 681
    iget-object v8, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mOpsToIgnoreIfNotAllowed:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;

    .line 682
    .local v8, "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    iget v9, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v9, v10}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Landroid/util/LongSparseLongArray;->indexOfKey(J)I

    move-result v9

    if-ltz v9, :cond_bd

    .line 683
    goto :goto_d4

    .line 686
    :cond_bd
    iget v9, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget-object v11, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->setUidModeIgnoredIfNotAllowed(IILjava/lang/String;)Z

    move-result v9

    .line 687
    .local v9, "wasSet":Z
    if-eqz v9, :cond_d4

    .line 688
    iget v10, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->uid:I

    iget v11, v8, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;->code:I

    invoke-static {v10, v11}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v10

    invoke-virtual {v0, v10, v11, v3, v4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 680
    .end local v8    # "op":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser$OpToChange;
    .end local v9    # "wasSet":Z
    :cond_d4
    :goto_d4
    add-int/lit8 v7, v7, 0x1

    goto :goto_a4

    .line 691
    .end local v7    # "i":I
    :cond_d7
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 831
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 832
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 836
    .local v0, "pmInternal":Landroid/content/pm/PackageManagerInternal;
    :try_start_8
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 837
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_14} :catch_3e

    .line 840
    .local v2, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    nop

    .line 842
    if-eqz v1, :cond_3d

    if-eqz v2, :cond_3d

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3d

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v3, :cond_22

    goto :goto_3d

    .line 847
    :cond_22
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 848
    .local v3, "uid":I
    if-eqz v3, :cond_3c

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2d

    goto :goto_3c

    .line 854
    :cond_2d
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_31
    if-ge v6, v5, :cond_3b

    aget-object v7, v4, v6

    .line 855
    .local v7, "permission":Ljava/lang/String;
    invoke-direct {p0, v1, v2, v7}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addAppOps(Landroid/content/pm/PackageInfo;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)V

    .line 854
    .end local v7    # "permission":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 857
    :cond_3b
    return-void

    .line 851
    :cond_3c
    :goto_3c
    return-void

    .line 844
    .end local v3    # "uid":I
    :cond_3d
    :goto_3d
    return-void

    .line 838
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catch_3e
    move-exception v1

    .line 839
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method
