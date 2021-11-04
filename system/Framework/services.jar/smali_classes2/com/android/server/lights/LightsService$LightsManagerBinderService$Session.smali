.class final Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService$LightsManagerBinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Session"
.end annotation


# instance fields
.field final mRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/lights/LightState;",
            ">;"
        }
    .end annotation
.end field

.field final mToken:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/android/server/lights/LightsService$LightsManagerBinderService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService$LightsManagerBinderService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "token"    # Landroid/os/IBinder;

    .line 196
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->this$1:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    .line 197
    iput-object p2, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mToken:Landroid/os/IBinder;

    .line 198
    return-void
.end method


# virtual methods
.method setRequest(ILandroid/hardware/lights/LightState;)V
    .registers 4
    .param p1, "lightId"    # I
    .param p2, "state"    # Landroid/hardware/lights/LightState;

    .line 201
    if-eqz p2, :cond_8

    .line 202
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    .line 204
    :cond_8
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightsManagerBinderService$Session;->mRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 206
    :goto_d
    return-void
.end method
