.class Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;
.super Ljava/lang/Object;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraUsageEvent"
.end annotation


# instance fields
.field public final mAPILevel:I

.field public final mCameraFacing:I

.field public final mClientName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .registers 4
    .param p1, "facing"    # I
    .param p2, "clientName"    # Ljava/lang/String;
    .param p3, "apiLevel"    # I

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;->mCameraFacing:I

    .line 238
    iput-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;->mClientName:Ljava/lang/String;

    .line 239
    iput p3, p0, Lcom/samsung/android/camera/CameraServiceWorker$CameraUsageEvent;->mAPILevel:I

    .line 240
    return-void
.end method
