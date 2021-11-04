.class Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$forceWipe:Z

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;ZZ)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/MasterClearReceiver;
    .param p2, "name"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-boolean p6, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iput-boolean p7, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 140
    const-string v0, "args"

    const-string v1, "Can\'t perform master clear/factory reset"

    const-string v2, "MasterClear"

    :try_start_6
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v4, "FactoryResetByCommand"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_e} :catch_1ae
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_e} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_1a4

    const-string v4, "SIMBasedChangeCSC"

    if-eqz v3, :cond_1d

    .line 141
    :try_start_12
    const-string v3, "!@FactoryResetByATCommand"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    # invokes: Lcom/android/server/MasterClearReceiver;->removeVZWResetDate()V
    invoke-static {v3}, Lcom/android/server/MasterClearReceiver;->access$000(Lcom/android/server/MasterClearReceiver;)V

    goto :goto_34

    .line 145
    :cond_1d
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    const-string v5, "HIDDEN_MENU"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 146
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-virtual {v3}, Lcom/android/server/MasterClearReceiver;->setSalesCodeChanged()V

    .line 150
    :cond_34
    :goto_34
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_3a} :catch_1ae
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_3a} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_3a} :catch_1a4

    const-string v4, "!@[MasterClearReceiver] OMC check delete !!!"

    const-string v5, "/efs/imei/omc.txt"

    if-nez v3, :cond_69

    .line 151
    :try_start_40
    new-instance v3, Ljava/io/File;

    const-string v6, "/omr/carrier"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, "omrDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 153
    const-string v6, "!@[MasterClearReceiver] OMC carrier delete !!!"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    # invokes: Lcom/android/server/MasterClearReceiver;->deleteDir(Ljava/io/File;)Z
    invoke-static {v3}, Lcom/android/server/MasterClearReceiver;->access$100(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 155
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v6, "omcCheck":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_69

    .line 157
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 163
    .end local v3    # "omrDir":Ljava/io/File;
    .end local v6    # "omcCheck":Ljava/io/File;
    :cond_69
    new-instance v3, Ljava/io/File;

    const-string v6, "/omr/res"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v3    # "omrDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 165
    const-string v6, "!@[MasterClearReceiver] OMC resource delete !!!"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    # invokes: Lcom/android/server/MasterClearReceiver;->deleteDir(Ljava/io/File;)Z
    invoke-static {v3}, Lcom/android/server/MasterClearReceiver;->access$100(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 167
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 168
    .local v5, "omcCheck":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 169
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 174
    .end local v5    # "omcCheck":Ljava/io/File;
    :cond_93
    new-instance v4, Ljava/io/File;

    const-string v5, "/omr/update"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v4, "omrUpDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 176
    const-string v5, "!@[MasterClearReceiver] OMC update package delete !!!"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    # invokes: Lcom/android/server/MasterClearReceiver;->deleteDir(Ljava/io/File;)Z
    invoke-static {v4}, Lcom/android/server/MasterClearReceiver;->access$100(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 178
    const-string v5, "!@[MasterClearReceiver] OMC update package delete finish !!!"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_b0
    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v6, "CustomWipe"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5
    :try_end_b8
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_b8} :catch_1ae
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_b8} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_b8} :catch_1a4

    const-string v6, ""

    if-eqz v5, :cond_111

    .line 184
    :try_start_bc
    const-string v5, "!!! call wipe customer !!!"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 187
    .local v5, "args":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 191
    :cond_ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "--locale="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .end local v5    # "args":Ljava/lang/String;
    .local v0, "args":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v5, v0, v6}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v0    # "args":Ljava/lang/String;
    goto/16 :goto_19d

    :cond_111
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v5, "WipeCustomerPartiotion"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 194
    const-string v0, "!!!WipeData and WipeCustomerPartiotion !!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--wipe_data\n--wipe_carrier\n--locale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19d

    .line 196
    :cond_141
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v5, "WipeCache"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16f

    .line 197
    const-string v0, "!!!Just Exit (For Bypass Factory Reset)!!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--just_exit\n--locale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v0, v5, v6}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19d

    .line 199
    :cond_16f
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v5, "Download"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_186

    .line 200
    const-string v0, "!!!Enter the Download Mode for Factory Routine!!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v0, v6, v5}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19d

    .line 204
    :cond_186
    const-string v0, "!!!No hasExtra, just call rebootWipeUserData!!!"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v7, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    # getter for: Lcom/android/server/MasterClearReceiver;->extraCmd:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/MasterClearReceiver;->access$200(Lcom/android/server/MasterClearReceiver;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;)V

    .line 208
    :goto_19d
    const-string v0, "Still running after master clear?!"

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a2
    .catch Ljava/io/FileNotFoundException; {:try_start_bc .. :try_end_1a2} :catch_1ae
    .catch Ljava/lang/SecurityException; {:try_start_bc .. :try_end_1a2} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_1a2} :catch_1a4

    .line 215
    nop

    .end local v3    # "omrDir":Ljava/io/File;
    .end local v4    # "omrUpDir":Ljava/io/File;
    goto :goto_1b3

    .line 213
    :catch_1a4
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b3

    .line 211
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1a9
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_1b2

    .line 209
    :catch_1ae
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1b2
    nop

    .line 216
    :goto_1b3
    return-void
.end method
