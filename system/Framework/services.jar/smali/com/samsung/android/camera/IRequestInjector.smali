.class public interface abstract Lcom/samsung/android/camera/IRequestInjector;
.super Ljava/lang/Object;
.source "IRequestInjector.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/IRequestInjector$Stub;,
        Lcom/samsung/android/camera/IRequestInjector$Default;
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_I32:Ljava/lang/String; = "key.i32"

.field public static final BUNDLE_KEY_TAG_NAME:Ljava/lang/String; = "key.tagName"

.field public static final BUNDLE_KEY_U8:Ljava/lang/String; = "key.u8"

.field public static final HASH:Ljava/lang/String; = "b05ff96f01de43f1b43fef6b50a2aa6a578c5be3"

.field public static final UNIHAL_VIDEO_MODE:Ljava/lang/String; = "samsung.android.unihal.videoMode"

.field public static final UNIHAL_VIDEO_MODE_AUTO_FRAMING:I = 0x28

.field public static final UNIHAL_VIDEO_MODE_BEAUTY:I = 0x32

.field public static final UNIHAL_VIDEO_MODE_BOKEH:I = 0x14

.field public static final UNIHAL_VIDEO_MODE_OFF:I = 0x0

.field public static final UNIHAL_VIDEO_MODE_SEGMENTATION:I = 0x1e

.field public static final UNIHAL_VIDEO_MODE_VDIS:I = 0xa

.field public static final UNIHAL_VIDEO_SEGMENTATION_BG_IMG_NUM:Ljava/lang/String; = "samsung.android.unihal.videoSegmentationBgImgNum"

.field public static final UNIHAL_VIDEO_SEGMENTATION_BLUR_LEVEL:Ljava/lang/String; = "samsung.android.unihal.videoSegmentationBlurLevel"

.field public static final UNIHAL_VIDEO_SEGMENTATION_MODE:Ljava/lang/String; = "samsung.android.unihal.videoSegmentationMode"

.field public static final UNIHAL_VIDEO_SEGMENTATION_MODE_BACKGROUND:I = 0x4

.field public static final UNIHAL_VIDEO_SEGMENTATION_MODE_BLUR:I = 0x3

.field public static final UNIHAL_VIDEO_SEGMENTATION_MODE_COLOR:I = 0x1

.field public static final UNIHAL_VIDEO_SEGMENTATION_MODE_COLOR_PICKER:I = 0x2

.field public static final UNIHAL_VIDEO_SEGMENTATION_MODE_OFF:I = 0x0

.field public static final UNIHAL_VIDEO_SEGMENTATION_RGB_VALUE:Ljava/lang/String; = "samsung.android.unihal.videoSegmentationRgbValue"

.field public static final VERSION:I = 0x2


# virtual methods
.method public abstract applyRequests([Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract clearRequests()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
