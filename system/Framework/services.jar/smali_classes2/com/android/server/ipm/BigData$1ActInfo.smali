.class Lcom/android/server/ipm/BigData$1ActInfo;
.super Ljava/lang/Object;
.source "NapBigDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ipm/BigData;->getBigData()Lcom/android/server/ipm/BigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActInfo"
.end annotation


# instance fields
.field public apk_version:Ljava/lang/String;

.field public cnt:I

.field public hit_consume_time:I

.field public nohit_consume_time:I

.field public predict_time:I

.field public preloadCnt:I

.field public successCnt:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 8
    .param p1, "apk_version"    # Ljava/lang/String;
    .param p2, "predict_time"    # I
    .param p3, "consume_time"    # I
    .param p4, "isSuccess"    # I
    .param p5, "isPreload"    # I

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/android/server/ipm/BigData$1ActInfo;->apk_version:Ljava/lang/String;

    .line 267
    iput p2, p0, Lcom/android/server/ipm/BigData$1ActInfo;->predict_time:I

    .line 268
    iput p4, p0, Lcom/android/server/ipm/BigData$1ActInfo;->successCnt:I

    .line 269
    iput p5, p0, Lcom/android/server/ipm/BigData$1ActInfo;->preloadCnt:I

    .line 270
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ipm/BigData$1ActInfo;->cnt:I

    .line 271
    const/4 v1, 0x0

    if-ne p5, v0, :cond_16

    .line 272
    iput p3, p0, Lcom/android/server/ipm/BigData$1ActInfo;->hit_consume_time:I

    .line 273
    iput v1, p0, Lcom/android/server/ipm/BigData$1ActInfo;->nohit_consume_time:I

    goto :goto_1a

    .line 275
    :cond_16
    iput v1, p0, Lcom/android/server/ipm/BigData$1ActInfo;->hit_consume_time:I

    .line 276
    iput p3, p0, Lcom/android/server/ipm/BigData$1ActInfo;->nohit_consume_time:I

    .line 278
    :goto_1a
    return-void
.end method
