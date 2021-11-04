.class public Lcom/google/android/startop/iorap/EventSequenceValidator;
.super Ljava/lang/Object;
.source "EventSequenceValidator.java"

# interfaces
.implements Lcom/android/server/wm/ActivityMetricsLaunchObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/EventSequenceValidator$State;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "EventSequenceValidator"


# instance fields
.field private accIntentStartedEvents:J

.field private state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    return-void
.end method

.method private decAccIntentStartedEvents()V
    .registers 5

    .line 246
    iget-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    .line 249
    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 250
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 252
    :cond_12
    iget-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    .line 253
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 254
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "dec AccIntentStartedEvents to %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 247
    :cond_2d
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The number of unknowns cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private incAccIntentStartedEvents()V
    .registers 6

    .line 234
    iget-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2e

    .line 237
    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 238
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 240
    :cond_10
    iget-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->accIntentStartedEvents:J

    .line 241
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 242
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const-string/jumbo v0, "inc AccIntentStartedEvents to %d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void

    .line 235
    :cond_2e
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The number of unknowns cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private logWarningWithStackTrace(Ljava/lang/String;)V
    .registers 6
    .param p1, "log"    # Ljava/lang/String;

    .line 258
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 259
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 260
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "EventSequenceValidator#getStackTrace"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 261
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "%s\n%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EventSequenceValidator"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled([B)V
    .registers 7
    .param p1, "activity"    # [B

    .line 165
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_10

    .line 166
    const-string/jumbo v0, "onActivityLaunchCancelled during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->decAccIntentStartedEvents()V

    .line 168
    return-void

    .line 170
    :cond_10
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_30

    .line 171
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 172
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 174
    return-void

    .line 177
    :cond_30
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 179
    return-void
.end method

.method public onActivityLaunchFinished([BJ)V
    .registers 9
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J

    .line 184
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_10

    .line 185
    const-string/jumbo v0, "onActivityLaunchFinished during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->decAccIntentStartedEvents()V

    .line 187
    return-void

    .line 190
    :cond_10
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_30

    .line 191
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 192
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 194
    return-void

    .line 197
    :cond_30
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 199
    return-void
.end method

.method public onActivityLaunched([BI)V
    .registers 8
    .param p1, "activity"    # [B
    .param p2, "temperature"    # I

    .line 148
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_d

    .line 149
    const-string/jumbo v0, "onActivityLaunched during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 150
    return-void

    .line 152
    :cond_d
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_2d

    .line 153
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 154
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 156
    return-void

    .line 159
    :cond_2d
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_LAUNCHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 161
    return-void
.end method

.method public onIntentFailed()V
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_10

    .line 130
    const-string/jumbo v0, "onIntentFailed during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->decAccIntentStartedEvents()V

    .line 132
    return-void

    .line 134
    :cond_10
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_30

    .line 135
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 136
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 138
    return-void

    .line 141
    :cond_30
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 143
    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timestampNs"    # J

    .line 105
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_1e

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntentStarted during UNKNOWN. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 108
    return-void

    .line 111
    :cond_1e
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_59

    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_FAILED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-eq v0, v1, :cond_59

    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_CANCELLED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-eq v0, v1, :cond_59

    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-eq v0, v1, :cond_59

    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-eq v0, v1, :cond_59

    .line 116
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 117
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 119
    invoke-direct {p0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->incAccIntentStartedEvents()V

    .line 120
    return-void

    .line 123
    :cond_59
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INTENT_STARTED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 125
    return-void
.end method

.method public onReportFullyDrawn([BJ)V
    .registers 9
    .param p1, "activity"    # [B
    .param p2, "timestampNs"    # J

    .line 204
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->UNKNOWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_d

    .line 205
    const-string/jumbo v0, "onReportFullyDrawn during UNKNOWN."

    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 206
    return-void

    .line 208
    :cond_d
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->INIT:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    if-ne v0, v1, :cond_14

    .line 209
    return-void

    .line 212
    :cond_14
    iget-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->ACTIVITY_FINISHED:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_31

    .line 213
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    .line 214
    const-string v1, "Cannot transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-direct {p0, v0}, Lcom/google/android/startop/iorap/EventSequenceValidator;->logWarningWithStackTrace(Ljava/lang/String;)V

    .line 215
    return-void

    .line 218
    :cond_31
    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    aput-object v1, v0, v2

    const-string v1, "Transition from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventSequenceValidator"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v0, Lcom/google/android/startop/iorap/EventSequenceValidator$State;->REPORT_FULLY_DRAWN:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    iput-object v0, p0, Lcom/google/android/startop/iorap/EventSequenceValidator;->state:Lcom/google/android/startop/iorap/EventSequenceValidator$State;

    .line 220
    return-void
.end method
