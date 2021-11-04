.class public Lcom/android/server/policy/OneHandOpPolicyManager;
.super Ljava/lang/Object;
.source "OneHandOpPolicyManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final EASY_ONE_HAND_SERVICE_ACTION:Ljava/lang/String; = "com.samsung.action.EASYONEHAND_SERVICE"

.field private static final EASY_ONE_HAND_SERVICE_CLASS:Ljava/lang/String; = "com.sec.android.easyonehand.EasyOneHandService"

.field private static final EASY_ONE_HAND_SERVICE_PACKAGE:Ljava/lang/String; = "com.sec.android.easyonehand"

.field private static final EASY_ONE_HAND_SERVICE_SCREEN_OFF_ACTION:Ljava/lang/String; = "com.samsung.action.EASYONEHAND_SERVICE_SCREEN_OFF"

.field private static final TAG:Ljava/lang/String; = "OneHandOpPolicyManager"

.field static final TYPE_GESTURE:I = 0x0

.field static final TYPE_HOME_BUTTON:I = 0x1

.field static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsOneHandOpEnabled:Z

.field private mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private mOneHandOpTriggeredType:I

.field private mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

.field private mReasonToStart:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OneHandOpPolicyManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policyExtension"    # Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mHandler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mIsOneHandOpEnabled:Z

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpTriggeredType:I

    .line 64
    iput-object p1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    .line 66
    return-void
.end method


# virtual methods
.method clearOneHandOpWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 181
    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_8

    .line 182
    iput-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_e

    .line 183
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_e

    .line 184
    iput-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 186
    :cond_e
    :goto_e
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 160
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOneHandOpController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 161
    const-string v0, " mOneHandOpHandler="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 162
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsOneHandOpEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mIsOneHandOpEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 163
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOneHandOpTriggeredType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpTriggeredType:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/OneHandOpPolicyManager;->toStringOneHandOpTriggeredType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mReasonToStart="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mReasonToStart:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public getOneHandOpTriggeredType()I
    .registers 2

    .line 81
    iget v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpTriggeredType:I

    return v0
.end method

.method public isOneHandOpEnabled()Z
    .registers 2

    .line 73
    iget-boolean v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mIsOneHandOpEnabled:Z

    return v0
.end method

.method public synthetic lambda$screenTurnedOff$1$OneHandOpPolicyManager()V
    .registers 5

    .line 110
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE_SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.easyonehand"

    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    .line 116
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1e

    .line 114
    :catch_1a
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method public synthetic lambda$startService$2$OneHandOpPolicyManager(Z)V
    .registers 6
    .param p1, "startByHomeKey"    # Z

    .line 130
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.easyonehand"

    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 133
    const-string v1, "StartByHomeKey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    .line 137
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_23

    .line 135
    :catch_1f
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public synthetic lambda$stopService$3$OneHandOpPolicyManager()V
    .registers 5

    .line 148
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.easyonehand"

    const-string v3, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 151
    const-string v1, "ForceHide"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    iget-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    .line 155
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_24

    .line 153
    :catch_20
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method

.method public synthetic lambda$systemBooted$0$OneHandOpPolicyManager()V
    .registers 2

    .line 94
    const-string/jumbo v0, "systemBooted"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/OneHandOpPolicyManager;->startService(Ljava/lang/String;)V

    return-void
.end method

.method screenTurnedOff()V
    .registers 5

    .line 99
    sget-boolean v0, Lcom/android/server/policy/OneHandOpPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_4a

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screenTurnedOff(), mIsOneHandOpEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mIsOneHandOpEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasOneHandOpController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    move v1, v2

    goto :goto_22

    :cond_21
    move v1, v3

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasOneHandOpHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2f

    goto :goto_30

    :cond_2f
    move v2, v3

    :goto_30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSystemBooted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHandOpPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_4a
    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_58

    .line 108
    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$DgMxwHfdac3IvZY7PRo0G6DBeO8;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$DgMxwHfdac3IvZY7PRo0G6DBeO8;-><init>(Lcom/android/server/policy/OneHandOpPolicyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    :cond_58
    return-void
.end method

.method public setOneHandOpEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mIsOneHandOpEnabled:Z

    .line 70
    return-void
.end method

.method public setOneHandOpTriggeredType(I)V
    .registers 2
    .param p1, "type"    # I

    .line 77
    iput p1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpTriggeredType:I

    .line 78
    return-void
.end method

.method setOneHandOpWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "win"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 169
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0xa28

    if-eq v0, v1, :cond_e

    const/16 v1, 0xa29

    if-eq v0, v1, :cond_b

    goto :goto_11

    .line 175
    :cond_b
    iput-object p1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpHandler:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_11

    .line 171
    :cond_e
    iput-object p1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mOneHandOpController:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 172
    nop

    .line 178
    :goto_11
    return-void
.end method

.method startService(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 122
    const-string/jumbo v0, "toggleOneHandOpByHomeKey"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    .local v0, "startByHomeKey":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startService() startByHomeKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    const-string v2, "OneHandOpPolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iput-object p1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mReasonToStart:Ljava/lang/String;

    .line 128
    iget-object v1, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$kFwNzU0Jf_UDGUlcRIrB06EJajo;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$kFwNzU0Jf_UDGUlcRIrB06EJajo;-><init>(Lcom/android/server/policy/OneHandOpPolicyManager;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method

.method stopService()V
    .registers 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopService(), caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneHandOpPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mReasonToStart:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$kwl7dRiK6JJEYrPgHNiRvH4EuB4;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$kwl7dRiK6JJEYrPgHNiRvH4EuB4;-><init>(Lcom/android/server/policy/OneHandOpPolicyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method systemBooted()V
    .registers 3

    .line 85
    sget-boolean v0, Lcom/android/server/policy/OneHandOpPolicyManager;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 86
    const-string v0, "OneHandOpPolicyManager"

    const-string/jumbo v1, "systemBooted()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_17

    .line 90
    return-void

    .line 93
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mIsOneHandOpEnabled:Z

    if-eqz v0, :cond_25

    .line 94
    iget-object v0, p0, Lcom/android/server/policy/OneHandOpPolicyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$tNb3vXsQhfQ1Q5E0eTlG0wL87EI;

    invoke-direct {v1, p0}, Lcom/android/server/policy/-$$Lambda$OneHandOpPolicyManager$tNb3vXsQhfQ1Q5E0eTlG0wL87EI;-><init>(Lcom/android/server/policy/OneHandOpPolicyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_25
    return-void
.end method

.method toStringOneHandOpTriggeredType(I)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # I

    .line 189
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 193
    const-string v0, "TYPE_UNKNOWN"

    return-object v0

    .line 191
    :cond_8
    const-string v0, "TYPE_HOME_BUTTON"

    return-object v0

    .line 190
    :cond_b
    const-string v0, "TYPE_GESTURE"

    return-object v0
.end method
