.class final Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;
.super Ljava/lang/Object;
.source "SemBiometricSysUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBiometricSysUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SysUiServiceSession"
.end annotation


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mId:I

.field private mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

.field private mToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;)V
    .registers 5
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/IBinder;
    .param p3, "lis"    # Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I

    .line 75
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mToken:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mBinder:Landroid/os/IBinder;

    .line 77
    iput-object p3, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 78
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 67
    iget v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 67
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;)Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;

    .line 67
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    return-object v0
.end method


# virtual methods
.method destroy()V
    .registers 2

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mBinder:Landroid/os/IBinder;

    .line 82
    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiServiceSession;->mListener:Lcom/android/server/biometrics/SemBiometricSysUiManager$SysUiListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
