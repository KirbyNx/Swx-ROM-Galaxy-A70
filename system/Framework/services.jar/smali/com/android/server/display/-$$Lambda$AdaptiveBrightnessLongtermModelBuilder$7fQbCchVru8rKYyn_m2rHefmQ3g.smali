.class public final synthetic Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$7fQbCchVru8rKYyn_m2rHefmQ3g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$7fQbCchVru8rKYyn_m2rHefmQ3g;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iput-object p2, p0, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$7fQbCchVru8rKYyn_m2rHefmQ3g;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$7fQbCchVru8rKYyn_m2rHefmQ3g;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object v1, p0, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$7fQbCchVru8rKYyn_m2rHefmQ3g;->f$1:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->lambda$dump$2$AdaptiveBrightnessLongtermModelBuilder(Ljava/io/PrintWriter;)V

    return-void
.end method
