.class public final synthetic Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$CoyK-YonZxNB-vwL8tWwifyfleg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

.field public final synthetic f$1:Landroid/app/admin/DevicePolicyManager;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;Landroid/app/admin/DevicePolicyManager;ZLcom/samsung/android/knox/ContextInfo;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$CoyK-YonZxNB-vwL8tWwifyfleg;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$CoyK-YonZxNB-vwL8tWwifyfleg;->f$1:Landroid/app/admin/DevicePolicyManager;

    iput-boolean p3, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$CoyK-YonZxNB-vwL8tWwifyfleg;->f$2:Z

    iput-object p4, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$CoyK-YonZxNB-vwL8tWwifyfleg;->f$3:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$CoyK-YonZxNB-vwL8tWwifyfleg;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$CoyK-YonZxNB-vwL8tWwifyfleg;->f$1:Landroid/app/admin/DevicePolicyManager;

    iget-boolean v2, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$CoyK-YonZxNB-vwL8tWwifyfleg;->f$2:Z

    iget-object v3, p0, Lcom/android/server/enterprise/datetime/-$$Lambda$DateTimePolicy$CoyK-YonZxNB-vwL8tWwifyfleg;->f$3:Lcom/samsung/android/knox/ContextInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->lambda$setAutomaticTime$4$DateTimePolicy(Landroid/app/admin/DevicePolicyManager;ZLcom/samsung/android/knox/ContextInfo;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
