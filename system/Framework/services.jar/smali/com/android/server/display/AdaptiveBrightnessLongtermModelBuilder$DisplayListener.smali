.class final Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessLongtermModelBuilder.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;


# direct methods
.method private constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 2

    .line 1215
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
    .param p2, "x1"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

    .line 1215
    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 1220
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1229
    if-nez p1, :cond_7

    .line 1230
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;->this$0:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    # invokes: Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateColorSampling()V
    invoke-static {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->access$600(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    .line 1232
    :cond_7
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 1225
    return-void
.end method
