.class public final synthetic Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$ADNn_wSsxu1352rEzpl8bNWHHIs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$ADNn_wSsxu1352rEzpl8bNWHHIs;->f$0:Lcom/android/server/location/gnss/GnssManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/gnss/-$$Lambda$GnssManagerService$ADNn_wSsxu1352rEzpl8bNWHHIs;->f$0:Lcom/android/server/location/gnss/GnssManagerService;

    check-cast p1, Landroid/location/IBatchedLocationCallback;

    invoke-virtual {v0, p1}, Lcom/android/server/location/gnss/GnssManagerService;->lambda$addGnssBatchingCallback$0$GnssManagerService(Landroid/location/IBatchedLocationCallback;)V

    return-void
.end method
