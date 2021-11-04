.class public Lcom/android/server/wm/TspStateManagerPackagePolicy;
.super Lcom/android/server/wm/PolicyImpl;
.source "TspStateManagerPackagePolicy.java"


# static fields
.field private static final CALLBACK_NAME_TSP:Ljava/lang/String; = "tsp"

.field private static final POLICY_NAME:Ljava/lang/String; = "TspStateManagerPackagePolicy"

.field private static final SET_TSP_COMMAND:Ljava/lang/String; = "-setTspCommand"


# direct methods
.method constructor <init>(Lcom/android/server/wm/PackageConfigurationController;)V
    .registers 4
    .param p1, "controller"    # Lcom/android/server/wm/PackageConfigurationController;

    .line 39
    const-string v0, "TspStateManagerPackagePolicy"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/PolicyImpl;-><init>(Lcom/android/server/wm/PackageConfigurationController;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/android/server/wm/-$$Lambda$TspStateManagerPackagePolicy$zYZ5YGfM9UlYXeTtUvuKTXWCnAY;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$TspStateManagerPackagePolicy$zYZ5YGfM9UlYXeTtUvuKTXWCnAY;-><init>(Lcom/android/server/wm/TspStateManagerPackagePolicy;)V

    const-string/jumbo v1, "tsp"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TspStateManagerPackagePolicy;->registerCallback(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 44
    return-void
.end method


# virtual methods
.method executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "-setTspCommand"

    const v3, 0x2ac8af2f

    if-eq v0, v3, :cond_d

    :cond_c
    goto :goto_15

    :cond_d
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_16

    :goto_15
    const/4 v0, -0x1

    :goto_16
    if-eqz v0, :cond_19

    .line 81
    return v1

    .line 70
    :cond_19
    array-length v0, p2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v3, :cond_34

    aget-object v0, p2, v1

    if-nez v0, :cond_23

    goto :goto_34

    .line 77
    :cond_23
    aget-object v0, p2, v1

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, p2, v4

    const-string/jumbo v2, "tsp"

    invoke-virtual {p0, p3, v0, v1, v2}, Lcom/android/server/wm/TspStateManagerPackagePolicy;->executeDebugModeLocked(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 71
    :cond_34
    :goto_34
    const-string v0, "-setTspCommand"

    .line 72
    .local v0, "cmd":Ljava/lang/String;
    const-string v1, "command"

    .line 73
    .local v1, "valueOption":Ljava/lang/String;
    invoke-static {p3, v2}, Lcom/android/server/wm/TspStateManagerPackagePolicy;->printOptionsRequires(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v3, "packageName"

    const-string v5, "command"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v2, v3}, Lcom/android/server/wm/TspStateManagerPackagePolicy;->printCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    const-string/jumbo v3, "packageName:packageName:..."

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v2, v3}, Lcom/android/server/wm/TspStateManagerPackagePolicy;->printCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 76
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "valueOption":Ljava/lang/String;
    nop

    .line 79
    :goto_52
    return v4
.end method

.method getLocalVersion()I
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/TspStateManagerPackagePolicy;->mController:Lcom/android/server/wm/PackageConfigurationController;

    iget-object v0, v0, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method getPolicyDataMapFromLocal(Ljava/lang/String;Lcom/android/server/wm/PolicyDataMap;)V
    .registers 12
    .param p1, "configurationName"    # Ljava/lang/String;
    .param p2, "outPolicyDataMap"    # Lcom/android/server/wm/PolicyDataMap;

    .line 54
    iget-object v0, p0, Lcom/android/server/wm/TspStateManagerPackagePolicy;->mController:Lcom/android/server/wm/PackageConfigurationController;

    iget-object v0, v0, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v1, "tsp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 56
    const v1, 0x107016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "packages":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    if-ge v4, v2, :cond_39

    aget-object v5, v1, v4

    .line 59
    .local v5, "pkgName":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2f

    const/4 v7, 0x1

    aget-object v7, v6, v7

    goto :goto_31

    :cond_2f
    const-string v7, ""

    .line 61
    .local v7, "value":Ljava/lang/String;
    :goto_31
    aget-object v8, v6, v3

    invoke-virtual {p2, v8, v7}, Lcom/android/server/wm/PolicyDataMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 64
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_39
    return-void
.end method

.method public synthetic lambda$new$0$TspStateManagerPackagePolicy(Lcom/android/server/wm/PolicyDataMap;)V
    .registers 3
    .param p1, "policyDataMap"    # Lcom/android/server/wm/PolicyDataMap;

    .line 42
    iget-object v0, p0, Lcom/android/server/wm/TspStateManagerPackagePolicy;->mController:Lcom/android/server/wm/PackageConfigurationController;

    iget-object v0, v0, Lcom/android/server/wm/PackageConfigurationController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerServiceExt;->mPolicyExt:Lcom/android/server/policy/WindowManagerPolicyExt;

    .line 43
    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicyExt;->setTspStateManagerPackagePolicyDataMap(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 42
    return-void
.end method
