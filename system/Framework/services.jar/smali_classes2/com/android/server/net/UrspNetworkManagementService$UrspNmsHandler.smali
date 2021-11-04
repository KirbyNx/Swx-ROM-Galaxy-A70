.class Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;
.super Landroid/os/Handler;
.source "UrspNetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/UrspNetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrspNmsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/UrspNetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/net/UrspNetworkManagementService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 120
    iput-object p1, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    .line 121
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 122
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_7c

    .line 167
    const-string v0, "default case"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    goto :goto_7b

    .line 143
    :pswitch_22
    const-string v0, "MSG_SET_UID_RULES_FOR_FOC"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    .line 144
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    .line 145
    .local v0, "uids":[I
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v2, :cond_30

    move v1, v2

    .line 146
    .local v1, "enabled":Z
    :cond_30
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 147
    .local v2, "netId":I
    iget-object v3, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    # invokes: Lcom/android/server/net/UrspNetworkManagementService;->setUrspRulesForFoc(ZI[I)V
    invoke-static {v3, v1, v2, v0}, Lcom/android/server/net/UrspNetworkManagementService;->access$200(Lcom/android/server/net/UrspNetworkManagementService;ZI[I)V

    .line 148
    goto :goto_7b

    .line 159
    .end local v0    # "uids":[I
    .end local v1    # "enabled":Z
    .end local v2    # "netId":I
    :pswitch_38
    const-string v0, "MSG_SET_STATE_FOR_FOC"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    .line 160
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_42

    move v1, v2

    :cond_42
    move v0, v1

    .line 161
    .local v0, "enabled":Z
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 162
    .local v1, "netId":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    .line 163
    .local v2, "uids":[I
    iget-object v3, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    # invokes: Lcom/android/server/net/UrspNetworkManagementService;->setUrspStateForFoc(Z[II)V
    invoke-static {v3, v0, v2, v1}, Lcom/android/server/net/UrspNetworkManagementService;->access$400(Lcom/android/server/net/UrspNetworkManagementService;Z[II)V

    .line 164
    goto :goto_7b

    .line 152
    .end local v0    # "enabled":Z
    .end local v1    # "netId":I
    .end local v2    # "uids":[I
    :pswitch_4f
    const-string v0, "MSG_SET_NETID_FOR_FOC"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    .line 153
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 154
    .local v0, "netId":I
    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    # invokes: Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetIdForFoc(I)V
    invoke-static {v1, v0}, Lcom/android/server/net/UrspNetworkManagementService;->access$300(Lcom/android/server/net/UrspNetworkManagementService;I)V

    .line 155
    goto :goto_7b

    .line 135
    .end local v0    # "netId":I
    :pswitch_5c
    const-string v0, "MSG_SET_UID_RULE_FOR_MDO"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    .line 136
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 137
    .local v0, "uid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v2, :cond_68

    move v1, v2

    .line 138
    .local v1, "enabled":Z
    :cond_68
    iget-object v2, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    # invokes: Lcom/android/server/net/UrspNetworkManagementService;->setUrspUidForMdo(ZI)V
    invoke-static {v2, v1, v0}, Lcom/android/server/net/UrspNetworkManagementService;->access$100(Lcom/android/server/net/UrspNetworkManagementService;ZI)V

    .line 139
    goto :goto_7b

    .line 128
    .end local v0    # "uid":I
    .end local v1    # "enabled":Z
    :pswitch_6e
    const-string v0, "MSG_SET_NETID_FOR_MDO"

    invoke-static {v0}, Lcom/android/server/net/UrspNetworkManagementService;->log(Ljava/lang/String;)V

    .line 129
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 130
    .local v0, "netId":I
    iget-object v1, p0, Lcom/android/server/net/UrspNetworkManagementService$UrspNmsHandler;->this$0:Lcom/android/server/net/UrspNetworkManagementService;

    # invokes: Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetIdForMdo(I)V
    invoke-static {v1, v0}, Lcom/android/server/net/UrspNetworkManagementService;->access$000(Lcom/android/server/net/UrspNetworkManagementService;I)V

    .line 131
    nop

    .line 171
    .end local v0    # "netId":I
    :goto_7b
    return-void

    :pswitch_data_7c
    .packed-switch 0x2711
        :pswitch_6e
        :pswitch_5c
        :pswitch_4f
        :pswitch_38
        :pswitch_22
    .end packed-switch
.end method
