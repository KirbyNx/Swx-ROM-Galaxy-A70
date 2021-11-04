.class Lcom/android/server/lights/LightsService$2;
.super Lcom/android/server/lights/LightsManager;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/lights/LightsService;

    .line 890
    iput-object p1, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/LightsManager;-><init>()V

    return-void
.end method


# virtual methods
.method public getLight(I)Lcom/android/server/lights/LogicalLight;
    .registers 3
    .param p1, "lightType"    # I

    .line 893
    iget-object v0, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2900(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object v0

    if-eqz v0, :cond_1c

    if-ltz p1, :cond_1c

    iget-object v0, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2900(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_1c

    .line 894
    iget-object v0, p0, Lcom/android/server/lights/LightsService$2;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2900(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0

    .line 896
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method
