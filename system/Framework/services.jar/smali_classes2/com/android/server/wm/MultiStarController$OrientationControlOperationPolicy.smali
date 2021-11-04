.class interface abstract annotation Lcom/android/server/wm/MultiStarController$OrientationControlOperationPolicy;
.super Ljava/lang/Object;
.source "MultiStarController.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiStarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2608
    name = "OrientationControlOperationPolicy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final ALWAYS:I = 0x0

.field public static final ONLY_MAIN_DISPLAY:I = 0x1

.field public static final ONLY_SUB_DISPLAY:I = 0x2
