.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$VbEiHJaYRYQKq-KAS1hQcxjIX3w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$VbEiHJaYRYQKq-KAS1hQcxjIX3w;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onAppForegroundChanged(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$VbEiHJaYRYQKq-KAS1hQcxjIX3w;->f$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/location/LocationManagerService;->lambda$VbEiHJaYRYQKq-KAS1hQcxjIX3w(Lcom/android/server/location/LocationManagerService;IZ)V

    return-void
.end method
