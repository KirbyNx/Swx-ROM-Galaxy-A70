.class public Lcom/android/server/biometrics/fingerprint/FingerprintUtils;
.super Ljava/lang/Object;
.source "FingerprintUtils.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricUtils;


# static fields
.field private static sInstance:Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/fingerprint/FingerprintUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    .line 52
    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/fingerprint/FingerprintUtils;
    .registers 2

    .line 43
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    if-nez v1, :cond_e

    .line 45
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    invoke-direct {v1}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    .line 47
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 48
    sget-object v0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->sInstance:Lcom/android/server/biometrics/fingerprint/FingerprintUtils;

    return-object v0

    .line 47
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 86
    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    .line 88
    .local v0, "state":Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    if-nez v0, :cond_16

    .line 89
    new-instance v1, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    .line 90
    iget-object v1, p0, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    :cond_16
    monitor-exit p0

    return-object v0

    .line 93
    .end local v0    # "state":Lcom/android/server/biometrics/fingerprint/FingerprintUserState;
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public static isFingerprintQualityFailedEvent(II)Z
    .registers 4
    .param p0, "acquiredInfo"    # I
    .param p1, "vendorCode"    # I

    .line 99
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_16

    goto :goto_13

    .line 107
    :pswitch_5
    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_11

    const/16 v1, 0x3eb

    if-eq p1, v1, :cond_11

    const/16 v1, 0x3ea

    if-ne p1, v1, :cond_13

    .line 110
    :cond_11
    return v0

    .line 105
    :pswitch_12
    return v0

    .line 114
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 63
    return-void
.end method

.method public getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->getBiometrics()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeBiometricForUser(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "fingerId"    # I

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->removeBiometric(I)V

    .line 68
    return-void
.end method

.method public renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "fingerId"    # I
    .param p4, "name"    # Ljava/lang/CharSequence;

    .line 73
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    return-void

    .line 77
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/fingerprint/FingerprintUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/fingerprint/FingerprintUserState;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/fingerprint/FingerprintUserState;->renameBiometric(ILjava/lang/CharSequence;)V

    .line 78
    return-void
.end method
