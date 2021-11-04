.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$BD6Z3kmR2qbK2IB1-7f_J9nIMQg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/AppOpsHelper$MockLocationAppOpListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$BD6Z3kmR2qbK2IB1-7f_J9nIMQg;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onMockLocationAppOpsChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$BD6Z3kmR2qbK2IB1-7f_J9nIMQg;->f$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->lambda$BD6Z3kmR2qbK2IB1-7f_J9nIMQg(Lcom/android/server/location/LocationManagerService;)V

    return-void
.end method
