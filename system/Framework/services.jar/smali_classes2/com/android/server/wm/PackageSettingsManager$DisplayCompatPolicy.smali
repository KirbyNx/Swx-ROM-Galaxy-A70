.class public interface abstract annotation Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPolicy;
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
    name = "DisplayCompatPolicy"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final EXCLUDE_BY_META_DATA:I = 0x5

.field public static final FORCED_RESIZEABLE_BY_ALLOW_LIST:I = 0x3

.field public static final FORCED_RESIZEABLE_BY_USER_SETTING:I = 0x1

.field public static final FORCED_UNRESIZEABLE_BY_BLOCK_LIST:I = 0x4

.field public static final FORCED_UNRESIZEABLE_BY_USER_SETTING:I = 0x2

.field public static final NONE:I
