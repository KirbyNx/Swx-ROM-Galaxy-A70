.class public Lcom/android/server/biometrics/face/FaceConstants;
.super Ljava/lang/Object;
.source "FaceConstants.java"

# interfaces
.implements Lcom/android/server/biometrics/Constants;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireVendorCode()I
    .registers 2

    .line 72
    const/16 v0, 0x16

    return v0
.end method

.method public actionBiometricAuth()I
    .registers 2

    .line 62
    const/16 v0, 0x5e0

    return v0
.end method

.method public actionBiometricEnroll()I
    .registers 2

    .line 67
    const/16 v0, 0x5e1

    return v0
.end method

.method public logTag()Ljava/lang/String;
    .registers 2

    .line 27
    const-string v0, "GFaceService"

    return-object v0
.end method

.method public tagAuthStartError()Ljava/lang/String;
    .registers 2

    .line 42
    const-string v0, "faced_auth_start_error"

    return-object v0
.end method

.method public tagAuthToken()Ljava/lang/String;
    .registers 2

    .line 37
    const-string v0, "face_token"

    return-object v0
.end method

.method public tagEnrollStartError()Ljava/lang/String;
    .registers 2

    .line 47
    const-string v0, "faced_enroll_start_error"

    return-object v0
.end method

.method public tagEnumerateStartError()Ljava/lang/String;
    .registers 2

    .line 52
    const-string v0, "faced_enum_start_error"

    return-object v0
.end method

.method public tagHalDied()Ljava/lang/String;
    .registers 2

    .line 32
    const-string v0, "faced_died"

    return-object v0
.end method

.method public tagRemoveStartError()Ljava/lang/String;
    .registers 2

    .line 57
    const-string v0, "faced_remove_start_error"

    return-object v0
.end method
