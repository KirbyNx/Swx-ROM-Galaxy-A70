.class public final synthetic Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$jKgJsH1E9rgwK4jMzQlqIwNrGKw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$jKgJsH1E9rgwK4jMzQlqIwNrGKw;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iput-object p2, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$jKgJsH1E9rgwK4jMzQlqIwNrGKw;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$jKgJsH1E9rgwK4jMzQlqIwNrGKw;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, p0, Lcom/android/server/devicepolicy/-$$Lambda$DevicePolicyManagerService$jKgJsH1E9rgwK4jMzQlqIwNrGKw;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->lambda$setDefaultSmsApplication$59$DevicePolicyManagerService(Ljava/lang/String;)V

    return-void
.end method
