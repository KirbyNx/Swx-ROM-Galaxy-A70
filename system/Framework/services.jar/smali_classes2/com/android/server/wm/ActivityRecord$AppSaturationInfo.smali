.class Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppSaturationInfo"
.end annotation


# instance fields
.field mMatrix:[F

.field mTranslation:[F


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 9279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9280
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    .line 9281
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/ActivityRecord$1;

    .line 9279
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method setSaturation([F[F)V
    .registers 6
    .param p1, "matrix"    # [F
    .param p2, "translation"    # [F

    .line 9284
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9285
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    array-length v1, v0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9286
    return-void
.end method
