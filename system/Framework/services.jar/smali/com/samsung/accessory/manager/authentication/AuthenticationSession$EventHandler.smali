.class Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
.super Landroid/os/Handler;
.source "AuthenticationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 137
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 138
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 139
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 143
    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget v3, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->convertMsg(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_152

    :pswitch_29
    goto/16 :goto_151

    .line 206
    :pswitch_2b
    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "session is timed out!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v2, 0x1f

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V
    invoke-static {v0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    .line 208
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStopSession(Z)V
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1500(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    goto/16 :goto_151

    .line 203
    :pswitch_43
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleTearDown()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$500(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 204
    goto/16 :goto_151

    .line 200
    :pswitch_4a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStopSession(Z)V
    invoke-static {v0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1500(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    .line 201
    goto/16 :goto_151

    .line 197
    :pswitch_51
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStartSession()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 198
    goto/16 :goto_151

    .line 184
    :pswitch_58
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1100(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 185
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1100(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v1, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 186
    :cond_6c
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z
    invoke-static {v0, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$902(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z

    .line 187
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1202(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 188
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 189
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_93

    .line 190
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0, v3}, Lcom/samsung/accessory/manager/authentication/Authenticator;->setSessionState(I)V

    .line 191
    :cond_93
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V
    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    .line 192
    goto/16 :goto_151

    .line 181
    :pswitch_9a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->connect()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$800(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 182
    goto/16 :goto_151

    .line 172
    :pswitch_a1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v0

    if-ne v0, v3, :cond_151

    .line 173
    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Connectivity is turned off while authentication is running!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$902(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z

    goto/16 :goto_151

    .line 163
    :pswitch_b9
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 164
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_151

    .line 168
    :cond_db
    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connectivity is disabled by user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    goto :goto_151

    .line 148
    :pswitch_e5
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 149
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_12a

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_12a

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 150
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    move-result v0

    if-eqz v0, :cond_12a

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    .line 151
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    move-result v0

    if-nez v0, :cond_12a

    .line 153
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v1, 0xc

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    .line 154
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleTearDown()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$500(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_151

    .line 156
    :cond_12a
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I
    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$602(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)I

    goto :goto_151

    .line 157
    :cond_130
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$700(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_151

    .line 158
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->connect()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$800(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$700(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_151

    .line 178
    :pswitch_14b
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleSetConnection()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 179
    nop

    .line 211
    :cond_151
    :goto_151
    return-void

    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_14b
        :pswitch_29
        :pswitch_e5
        :pswitch_b9
        :pswitch_a1
        :pswitch_29
        :pswitch_9a
        :pswitch_58
        :pswitch_29
        :pswitch_29
        :pswitch_51
        :pswitch_4a
        :pswitch_43
        :pswitch_2b
    .end packed-switch
.end method
