.class public final synthetic Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$L-ZgA7H4zR9lwbYx7oq4rBbkNfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$L-ZgA7H4zR9lwbYx7oq4rBbkNfM;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$L-ZgA7H4zR9lwbYx7oq4rBbkNfM;->f$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->lambda$scheduleWriteAdaptiveBrightnessLongtermModelBuilderState$1$AdaptiveBrightnessLongtermModelBuilder()V

    return-void
.end method
