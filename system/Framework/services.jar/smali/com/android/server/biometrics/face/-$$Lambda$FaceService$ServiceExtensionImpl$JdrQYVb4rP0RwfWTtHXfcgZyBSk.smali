.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$JdrQYVb4rP0RwfWTtHXfcgZyBSk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFace$sehGetFaceTagCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$JdrQYVb4rP0RwfWTtHXfcgZyBSk;->f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iput p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$JdrQYVb4rP0RwfWTtHXfcgZyBSk;->f$1:I

    return-void
.end method


# virtual methods
.method public final onValues(ILvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$JdrQYVb4rP0RwfWTtHXfcgZyBSk;->f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$JdrQYVb4rP0RwfWTtHXfcgZyBSk;->f$1:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->lambda$getFaceTag$2$FaceService$ServiceExtensionImpl(IILvendor/samsung/hardware/biometrics/face/V2_0/SehFaceTag;)V

    return-void
.end method
