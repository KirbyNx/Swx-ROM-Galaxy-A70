.class public final synthetic Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$v5weP48tcgV_Pr7kzEEv4AvPw_k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/utils/quota/QuotaTracker;

.field public final synthetic f$1:Landroid/app/AlarmManager$OnAlarmListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/utils/quota/QuotaTracker;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$v5weP48tcgV_Pr7kzEEv4AvPw_k;->f$0:Lcom/android/server/utils/quota/QuotaTracker;

    iput-object p2, p0, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$v5weP48tcgV_Pr7kzEEv4AvPw_k;->f$1:Landroid/app/AlarmManager$OnAlarmListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$v5weP48tcgV_Pr7kzEEv4AvPw_k;->f$0:Lcom/android/server/utils/quota/QuotaTracker;

    iget-object v1, p0, Lcom/android/server/utils/quota/-$$Lambda$QuotaTracker$v5weP48tcgV_Pr7kzEEv4AvPw_k;->f$1:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/QuotaTracker;->lambda$cancelAlarm$1$QuotaTracker(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method
