.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$4Os2sPbRizc5gZ-TgfrD1QAI5xM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$4Os2sPbRizc5gZ-TgfrD1QAI5xM;->f$0:Lcom/android/server/location/LocationManagerService;

    iput p2, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$4Os2sPbRizc5gZ-TgfrD1QAI5xM;->f$1:I

    return-void
.end method


# virtual methods
.method public final getPackages(I)[Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$4Os2sPbRizc5gZ-TgfrD1QAI5xM;->f$0:Lcom/android/server/location/LocationManagerService;

    iget v1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$4Os2sPbRizc5gZ-TgfrD1QAI5xM;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/LocationManagerService;->lambda$new$0$LocationManagerService(II)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
