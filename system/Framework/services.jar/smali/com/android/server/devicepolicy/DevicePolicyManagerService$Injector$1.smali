.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->postContainerAnalytics(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field final synthetic val$personaService:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$timeMs:J

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Lcom/android/server/pm/PersonaManagerService;JI)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 2829
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->val$personaService:Lcom/android/server/pm/PersonaManagerService;

    iput-wide p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->val$timeMs:J

    iput p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->val$userHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2832
    const-string v0, "DevicePolicyManager"

    const-string/jumbo v1, "notify persona to may log analytics"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->val$personaService:Lcom/android/server/pm/PersonaManagerService;

    iget-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->val$timeMs:J

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector$1;->val$userHandle:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->notifyPersona(JI)V

    .line 2834
    return-void
.end method
