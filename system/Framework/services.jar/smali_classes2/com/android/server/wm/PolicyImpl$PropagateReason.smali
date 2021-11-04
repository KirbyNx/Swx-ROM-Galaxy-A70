.class public interface abstract annotation Lcom/android/server/wm/PolicyImpl$PropagateReason;
.super Ljava/lang/Object;
.source "PackageConfigurationController.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PolicyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "PropagateReason"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DEBUG_MODE:I = 0x3

.field public static final LOCAL:I = 0x0

.field public static final POLICY_DISABLED:I = 0x2

.field public static final SCPM:I = 0x1
