.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$S3T8HqTfY7yiYAzbs_wp9v7QId8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(ILjava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$S3T8HqTfY7yiYAzbs_wp9v7QId8;->f$0:I

    iput-object p2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$S3T8HqTfY7yiYAzbs_wp9v7QId8;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$S3T8HqTfY7yiYAzbs_wp9v7QId8;->f$0:I

    iget-object v1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$S3T8HqTfY7yiYAzbs_wp9v7QId8;->f$1:Ljava/io/File;

    check-cast p1, Lcom/android/server/sdp/SdpManagerInternal;

    invoke-static {v0, v1, p1}, Lcom/android/server/SdpManagerService;->lambda$handleDeviceOwnerChanged$2(ILjava/io/File;Lcom/android/server/sdp/SdpManagerInternal;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
