.class public final synthetic Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$Mmy0iiQ9Xb4SthVCyuYxfvYm6jE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

.field public final synthetic f$1:Landroid/hardware/face/Face;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;Landroid/hardware/face/Face;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$Mmy0iiQ9Xb4SthVCyuYxfvYm6jE;->f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iput-object p2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$Mmy0iiQ9Xb4SthVCyuYxfvYm6jE;->f$1:Landroid/hardware/face/Face;

    iput p3, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$Mmy0iiQ9Xb4SthVCyuYxfvYm6jE;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$Mmy0iiQ9Xb4SthVCyuYxfvYm6jE;->f$0:Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;

    iget-object v1, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$Mmy0iiQ9Xb4SthVCyuYxfvYm6jE;->f$1:Landroid/hardware/face/Face;

    iget v2, p0, Lcom/android/server/biometrics/face/-$$Lambda$FaceService$ServiceExtensionImpl$Mmy0iiQ9Xb4SthVCyuYxfvYm6jE;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/face/FaceService$ServiceExtensionImpl;->lambda$doTemplateSyncForUser$4$FaceService$ServiceExtensionImpl(Landroid/hardware/face/Face;I)V

    return-void
.end method
