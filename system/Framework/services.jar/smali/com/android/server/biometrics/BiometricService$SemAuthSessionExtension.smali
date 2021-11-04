.class final Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;
.super Ljava/lang/Object;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SemAuthSessionExtension"
.end annotation


# instance fields
.field mBundle:Landroid/os/Bundle;

.field mCookie:I

.field mCurrentModality:I

.field mEffectiveUserId:I

.field mPrivilegedFlag:I

.field mResultExtraData:Landroid/os/Bundle;

.field mStateExtra:I

.field private mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

.field private mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

.field mSysUiSessionId:I

.field mSysUiType:I

.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;ILandroid/os/Bundle;I)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "cookie"    # I
    .param p4, "b"    # Landroid/os/Bundle;
    .param p5, "userId"    # I

    .line 2656
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2657
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mToken:Landroid/os/IBinder;

    .line 2658
    iput p3, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mCookie:I

    .line 2659
    if-eqz p4, :cond_14

    .line 2660
    const/4 v0, 0x0

    const-string v1, "SEM_KEY_PRIVILEGED_FLAG"

    invoke-virtual {p4, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mPrivilegedFlag:I

    .line 2662
    :cond_14
    iput-object p4, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    .line 2663
    # invokes: Lcom/android/server/biometrics/BiometricService;->semGetEffectiveUserId(I)I
    invoke-static {p1, p5}, Lcom/android/server/biometrics/BiometricService;->access$2800(Lcom/android/server/biometrics/BiometricService;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mEffectiveUserId:I

    .line 2664
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->get()Lcom/android/server/biometrics/SemBiometricSysUiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    .line 2666
    new-instance v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension$1;-><init>(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;Lcom/android/server/biometrics/BiometricService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 2694
    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 2639
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->onBiometricAuthenticated(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 2639
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->onBiometricError(III)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 2639
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->hide(II)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;IIILjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 2639
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->onBiometricHelp(IIILjava/lang/String;)V

    return-void
.end method

.method private hide(II)V
    .registers 5
    .param p1, "reason"    # I
    .param p2, "flag"    # I

    .line 2757
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiSessionId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->hide(III)V

    .line 2758
    return-void
.end method

.method private onBiometricAuthenticated(ZLjava/lang/String;)V
    .registers 5
    .param p1, "authenticated"    # Z
    .param p2, "name"    # Ljava/lang/String;

    .line 2761
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiSessionId:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->onAuthenticated(IZLjava/lang/String;)V

    .line 2762
    return-void
.end method

.method private onBiometricError(III)V
    .registers 7
    .param p1, "modality"    # I
    .param p2, "error"    # I
    .param p3, "vendorCode"    # I

    .line 2765
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiSessionId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->onBiometricError(IIILjava/lang/String;)V

    .line 2766
    return-void
.end method

.method private onBiometricHelp(IIILjava/lang/String;)V
    .registers 7
    .param p1, "modality"    # I
    .param p2, "acquiredInfo"    # I
    .param p3, "vendorCode"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 2769
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiSessionId:I

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->onBiometricHelp(IIILjava/lang/String;)V

    .line 2770
    return-void
.end method

.method private setManagedProfileInfo(II)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "callingUserId"    # I

    .line 2773
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->useOwnerBiometrics(I)Z

    move-result v0

    const-string/jumbo v1, "setManagedProfileInfo: "

    const-string v2, "BiometricService"

    const/4 v3, 0x1

    if-nez v0, :cond_54

    .line 2775
    :try_start_c
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 2776
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2777
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 2778
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    const-string v6, "MANAGED_PROFILE"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2779
    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    const-string v6, "MANAGED_PROFILE_COLOR"

    .line 2780
    invoke-virtual {v4, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v7

    .line 2779
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3c} :catch_3d

    .line 2784
    .end local v0    # "um":Landroid/os/UserManager;
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_3c
    goto :goto_54

    .line 2782
    :catch_3d
    move-exception v0

    .line 2783
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 2792
    if-eq p1, p2, :cond_b8

    .line 2793
    :try_start_5c
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 2794
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    const-string v4, "SECURE_FOLDER"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2795
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    const-string v3, "SECURE_FOLDER_NAME"

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 2796
    invoke-virtual {v4}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 2795
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    .line 2798
    :cond_7b
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    const-string v4, "MANAGED_PROFILE_KNOX"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2799
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    const-string v4, "MANAGED_PROFILE_KNOX_NAME"

    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 2800
    invoke-virtual {v5}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 2799
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    const-string v4, "MANAGED_PROFILE_KNOX_TWO_FACTOR"

    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 2802
    invoke-virtual {v5}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "knox_finger_print_plus"

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v8, v7, p1}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZII)I

    move-result v5

    if-ne v5, v3, :cond_a9

    goto :goto_aa

    :cond_a9
    move v3, v8

    .line 2801
    :goto_aa
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2804
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    const-string v3, "MANAGED_PROFILE_KNOX_LEGACY_CL"

    .line 2805
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v4

    .line 2804
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2809
    :cond_b8
    :goto_b8
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 2810
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    const-string v3, "KEY_SECURE_FOLDER_EFFECTIVE_ID"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_c5} :catch_c6

    .line 2814
    :cond_c5
    goto :goto_dd

    .line 2812
    :catch_c6
    move-exception v0

    .line 2813
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_dd
    :goto_dd
    return-void
.end method


# virtual methods
.method closeSysUiSession()V
    .registers 3

    .line 2722
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiSessionId:I

    if-eqz v0, :cond_9

    .line 2723
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->closeSession(I)V

    .line 2725
    :cond_9
    return-void
.end method

.method getCookie()I
    .registers 2

    .line 2697
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mCookie:I

    return v0
.end method

.method getStateExtra()I
    .registers 2

    .line 2705
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mStateExtra:I

    return v0
.end method

.method openSysUiSession(I)V
    .registers 6
    .param p1, "id"    # I

    .line 2709
    iget v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiSessionId:I

    if-nez v0, :cond_1a

    .line 2710
    if-nez p1, :cond_17

    .line 2711
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->openSession(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiSessionId:I

    goto :goto_3b

    .line 2714
    :cond_17
    iput p1, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiSessionId:I

    goto :goto_3b

    .line 2717
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "openSysUiSession: already open = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :goto_3b
    return-void
.end method

.method setStateExtra(I)V
    .registers 2
    .param p1, "state"    # I

    .line 2701
    iput p1, p0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mStateExtra:I

    .line 2702
    return-void
.end method

.method show(IIIZJLjava/lang/String;)V
    .registers 21
    .param p1, "modality"    # I
    .param p2, "userId"    # I
    .param p3, "callingUserId"    # I
    .param p4, "requireConfirmation"    # Z
    .param p5, "opId"    # J
    .param p7, "opPackageName"    # Ljava/lang/String;

    .line 2729
    move-object v0, p0

    move v1, p1

    iput v1, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mCurrentModality:I

    .line 2730
    const/4 v2, 0x1

    if-eq v1, v2, :cond_42

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-eq v1, v2, :cond_3f

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3a

    if-eq v1, v3, :cond_35

    const/16 v2, 0x100

    if-eq v1, v2, :cond_30

    .line 2747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show: Unknown modality:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricService"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiType:I

    goto :goto_48

    .line 2744
    :cond_30
    const/16 v2, 0x4000

    iput v2, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiType:I

    .line 2745
    goto :goto_48

    .line 2738
    :cond_35
    const/16 v2, 0x1000

    iput v2, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiType:I

    .line 2739
    goto :goto_48

    .line 2741
    :cond_3a
    const/16 v2, 0x2000

    iput v2, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiType:I

    .line 2742
    goto :goto_48

    .line 2735
    :cond_3f
    iput v3, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiType:I

    .line 2736
    goto :goto_48

    .line 2732
    :cond_42
    const v2, 0x8000

    iput v2, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiType:I

    .line 2733
    nop

    .line 2751
    :goto_48
    move v2, p2

    move/from16 v3, p3

    invoke-direct {p0, p2, v3}, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->setManagedProfileInfo(II)V

    .line 2752
    iget-object v4, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiManager:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    iget v5, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiSessionId:I

    iget v6, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mSysUiType:I

    iget-object v7, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mBundle:Landroid/os/Bundle;

    iget v9, v0, Lcom/android/server/biometrics/BiometricService$SemAuthSessionExtension;->mEffectiveUserId:I

    move/from16 v8, p4

    move-object/from16 v10, p7

    move-wide/from16 v11, p5

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->show(IILandroid/os/Bundle;ZILjava/lang/String;J)V

    .line 2754
    return-void
.end method
