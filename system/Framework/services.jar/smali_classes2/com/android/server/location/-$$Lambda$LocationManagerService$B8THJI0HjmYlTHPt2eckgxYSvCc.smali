.class public final synthetic Lcom/android/server/location/-$$Lambda$LocationManagerService$B8THJI0HjmYlTHPt2eckgxYSvCc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$B8THJI0HjmYlTHPt2eckgxYSvCc;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final getPackages(I)[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/-$$Lambda$LocationManagerService$B8THJI0HjmYlTHPt2eckgxYSvCc;->f$0:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationManagerService;->lambda$new$2$LocationManagerService(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
