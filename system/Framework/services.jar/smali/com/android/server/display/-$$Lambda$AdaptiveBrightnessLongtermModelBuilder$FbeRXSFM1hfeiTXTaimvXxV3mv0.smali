.class public final synthetic Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$FbeRXSFM1hfeiTXTaimvXxV3mv0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$FbeRXSFM1hfeiTXTaimvXxV3mv0;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iput-boolean p2, p0, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$FbeRXSFM1hfeiTXTaimvXxV3mv0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$FbeRXSFM1hfeiTXTaimvXxV3mv0;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$FbeRXSFM1hfeiTXTaimvXxV3mv0;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->lambda$restartAdaptiveBrightnessStatsTracker$0$AdaptiveBrightnessLongtermModelBuilder(Z)V

    return-void
.end method
