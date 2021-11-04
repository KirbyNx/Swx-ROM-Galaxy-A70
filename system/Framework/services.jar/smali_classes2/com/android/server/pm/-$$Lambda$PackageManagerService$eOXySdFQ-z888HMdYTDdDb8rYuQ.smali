.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$eOXySdFQ-z888HMdYTDdDb8rYuQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$eOXySdFQ-z888HMdYTDdDb8rYuQ;->f$0:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$eOXySdFQ-z888HMdYTDdDb8rYuQ;->f$0:Ljava/util/function/BiConsumer;

    check-cast p1, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$new$8(Ljava/util/function/BiConsumer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method
