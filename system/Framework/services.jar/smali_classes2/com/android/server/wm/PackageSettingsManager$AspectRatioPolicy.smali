.class public interface abstract annotation Lcom/android/server/wm/PackageSettingsManager$AspectRatioPolicy;
.super Ljava/lang/Object;
.source "PackageSettingsManager.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AspectRatioPolicy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DISPLAY_CUTOUT_OFF_MODE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FULL_SCREEN_MODE:I = 0x1

.field public static final UNCHANGEABLE_ASPECT_RATIO_MODE:I = 0x3

.field public static final UNCHANGEABLE_FULL_SCREEN_MODE:I = 0x2

.field public static final UNDEFINED:I = -0x1
