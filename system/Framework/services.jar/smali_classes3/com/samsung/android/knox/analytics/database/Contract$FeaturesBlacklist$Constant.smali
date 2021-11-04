.class public Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist$Constant;
.super Ljava/lang/Object;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/database/Contract$FeaturesBlacklist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constant"
.end annotation


# static fields
.field public static final ALL_FEATURES:Ljava/lang/String; = "*"

.field public static final API_USAGE_FEATURE_NAME:Ljava/lang/String; = "API_USAGE"

.field public static final DISABLE_TYPE_ALL:I = 0x0

.field public static final DISABLE_TYPE_GET:I = 0x2

.field public static final DISABLE_TYPE_NONE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
