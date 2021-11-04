.class Lcom/android/server/enterprise/application/ApplicationPolicy$3;
.super Ljava/lang/Thread;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->onAdminRemoved(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field final synthetic val$uid:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 753
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    iput p3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 755
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$200(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    .line 756
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileApplicationsState(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$300(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    .line 757
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$uid:I

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->clearApplicationIconDbForUser(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$400(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    .line 758
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$3;->val$userId:I

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileComponentsState(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$500(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V

    .line 759
    return-void
.end method
