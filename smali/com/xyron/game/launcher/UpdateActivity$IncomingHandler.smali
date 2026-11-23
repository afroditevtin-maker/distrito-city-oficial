.class Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;
.super Landroid/os/Handler;
.source "UpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xyron/game/launcher/UpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xyron/game/launcher/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/xyron/game/launcher/UpdateActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 100
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v2}, Lcom/xyron/game/launcher/UpdateActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v2}, Lcom/xyron/game/launcher/UpdateActivity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    .line 101
    :cond_0
    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    const-string v4, "UpdateActivity"

    const-string v8, "status"

    const v9, 0x7f0a016b

    const-string/jumbo v10, "x1y2z"

    const v11, 0x7f0a013e

    const v12, 0x7f0a016c

    const v13, 0x7f0a01f6

    const-string v5, ""

    if-ne v2, v3, :cond_b

    .line 102
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->valueOf(Ljava/lang/String;)Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    move-result-object v2

    .line 103
    sget-object v3, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->DownloadGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    const/16 v8, 0x2710

    const-string v6, "current"

    const-string v7, "total"

    const-string v14, "statusname = "

    const-string v15, "filename"

    if-eq v2, v3, :cond_5

    sget-object v3, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->ExtractGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    if-ne v2, v3, :cond_1

    goto/16 :goto_1

    .line 129
    :cond_1
    sget-object v3, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->CheckUpdate:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    if-ne v2, v3, :cond_2

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 133
    iget-object v6, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v6, v12}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v0, v11}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 135
    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 136
    invoke-static {v4, v5, v2, v3}, Lcom/xyron/game/launcher/util/TransferProgress;->units(JJ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_6

    .line 137
    :cond_2
    sget-object v3, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->DownloadGame:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    if-ne v2, v3, :cond_3

    .line 138
    iget-object v3, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v3, v13}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {v4}, Lcom/xyron/game/launcher/UpdateActivity;->access$100(Lcom/xyron/game/launcher/UpdateActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 141
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 142
    iget-object v6, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v6, v12}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v6, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v6, v9}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "currentfile"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v9, "totalfiles"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v0, v11}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    .line 145
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 146
    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 147
    invoke-static {v4, v5, v2, v3}, Lcom/xyron/game/launcher/util/TransferProgress;->units(JJ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_6

    .line 148
    :cond_3
    sget-object v3, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->SourceUnavailable:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    if-ne v2, v3, :cond_4

    .line 149
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/xyron/game/launcher/UpdateActivity;->access$002(Lcom/xyron/game/launcher/UpdateActivity;Z)Z

    .line 150
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v2, v13}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "Nao foi possivel concluir a instalacao"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v2, v12}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "error"

    const-string v6, "Nao foi possivel acessar os arquivos agora."

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v2, v9}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "Toque aqui para tentar novamente. A data existente foi preservada."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const v3, 0x7f0a016d

    invoke-virtual {v2, v3}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const v3, 0x7f0a021a

    invoke-virtual {v2, v3}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v2, v11}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    .line 156
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 157
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 158
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "error"

    const-string v4, "N\u00e3o foi poss\u00edvel acessar os arquivos. Confira sua conex\u00e3o e tente novamente."

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/xyron/game/launcher/util/AngraLanguage;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 159
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const v2, 0x7f0a03b5

    invoke-virtual {v0, v2}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler$$ExternalSyntheticLambda0;-><init>(Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 160
    :cond_4
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    iget-boolean v0, v0, Lcom/xyron/game/launcher/UpdateActivity;->mIsStartingUpdate:Z

    if-nez v0, :cond_14

    const/4 v0, 0x0

    .line 161
    move-object v5, v0

    check-cast v5, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 162
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    iget-object v2, v2, Lcom/xyron/game/launcher/UpdateActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 164
    :try_start_0
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    iget-object v2, v2, Lcom/xyron/game/launcher/UpdateActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 168
    :goto_0
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/xyron/game/launcher/UpdateActivity;->mIsStartingUpdate:Z

    goto/16 :goto_6

    .line 104
    :cond_5
    :goto_1
    iget-object v3, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const/4 v8, 0x0

    invoke-static {v3, v8}, Lcom/xyron/game/launcher/UpdateActivity;->access$002(Lcom/xyron/game/launcher/UpdateActivity;Z)Z

    .line 105
    iget-object v3, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const v8, 0x7f0a03b5

    invoke-virtual {v3, v8}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v3, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v3, v13}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v8, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->ExtractGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    if-ne v2, v8, :cond_6

    .line 107
    const-string v8, "Descompactando arquivos\u2026"

    goto :goto_2

    :cond_6
    iget-object v8, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {v8}, Lcom/xyron/game/launcher/UpdateActivity;->access$100(Lcom/xyron/game/launcher/UpdateActivity;)Ljava/lang/String;

    move-result-object v8

    .line 106
    :goto_2
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v15, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    const-string v8, "Aguardando"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v8, v13}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 112
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 113
    iget-object v3, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v3, v12}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateActivity;->access$200(Lcom/xyron/game/launcher/UpdateActivity;)Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    move-result-object v0

    if-eq v0, v2, :cond_8

    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateActivity;->access$300(Lcom/xyron/game/launcher/UpdateActivity;)Lcom/xyron/game/launcher/util/TransferProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xyron/game/launcher/util/TransferProgress;->reset()V

    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {v0, v2}, Lcom/xyron/game/launcher/UpdateActivity;->access$202(Lcom/xyron/game/launcher/UpdateActivity;Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;)Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    .line 115
    :cond_8
    sget-object v0, Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;->ExtractGameData:Lcom/xyron/game/launcher/UpdateActivity$UpdateStatus;

    if-ne v2, v0, :cond_9

    .line 116
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v0, v12}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v0, v9}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const v2, 0x7f0a021a

    invoke-virtual {v0, v2}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 120
    :cond_9
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {v0, v13, v14, v7, v8}, Lcom/xyron/game/launcher/UpdateActivity;->access$400(Lcom/xyron/game/launcher/UpdateActivity;JJ)V

    .line 122
    :goto_3
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v0, v11}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-wide/16 v2, 0x0

    cmp-long v5, v7, v2

    if-gtz v5, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    .line 123
    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/32 v5, 0x100000

    div-long v5, v7, v5

    long-to-int v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v5, 0x100000

    div-long v5, v13, v5

    long-to-int v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x2710

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 126
    invoke-static {v13, v14, v7, v8}, Lcom/xyron/game/launcher/util/TransferProgress;->units(JJ)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 128
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const v2, 0x7f0a016d

    invoke-virtual {v0, v2}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v13, v14, v7, v8}, Lcom/xyron/game/launcher/util/TransferProgress;->percent(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 171
    :cond_b
    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_c

    .line 173
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v0, v13}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Reinstalacao concluida"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v0, v12}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Todos os arquivos do jogo foram reinstalados."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v0, v9}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "Concluido"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const v2, 0x7f0a016d

    invoke-virtual {v0, v2}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "100%"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const v2, 0x7f0a021a

    invoke-virtual {v0, v2}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v0, v11}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    .line 179
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 v2, 0x64

    .line 180
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 181
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 182
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateActivity;->access$500(Lcom/xyron/game/launcher/UpdateActivity;)V

    goto/16 :goto_6

    .line 184
    :cond_c
    iget v2, v0, Landroid/os/Message;->what:I

    const-string v3, "apkPath"

    const/4 v6, 0x2

    if-ne v2, v6, :cond_11

    .line 187
    const-string v2, "UpdateService.UPDATE_GAME_DATA"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v8, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d

    .line 192
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/xyron/game/launcher/UpdateActivity;->access$602(Lcom/xyron/game/launcher/UpdateActivity;Ljava/io/File;)Ljava/io/File;

    .line 194
    :cond_d
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateActivity;->access$600(Lcom/xyron/game/launcher/UpdateActivity;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateActivity;->access$600(Lcom/xyron/game/launcher/UpdateActivity;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    .line 197
    :cond_e
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v0}, Lcom/xyron/game/launcher/UpdateActivity;->requestInstallGame()V

    return-void

    .line 195
    :cond_f
    :goto_5
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-static {v0}, Lcom/xyron/game/launcher/UpdateActivity;->access$500(Lcom/xyron/game/launcher/UpdateActivity;)V

    .line 201
    :cond_10
    const-string v0, "Error update game data"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 203
    :cond_11
    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_14

    .line 204
    const-string v2, "UpdateService.UPDATE_GAME"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v2, v13}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v9, "Instalando..."

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    invoke-virtual {v2, v11}, Lcom/xyron/game/launcher/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 207
    invoke-virtual {v2, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 210
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 211
    iget-object v0, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/xyron/game/launcher/UpdateActivity;->access$602(Lcom/xyron/game/launcher/UpdateActivity;Ljava/io/File;)Ljava/io/File;

    :cond_12
    const/4 v0, 0x0

    .line 213
    move-object v5, v0

    check-cast v5, Landroid/os/Handler;

    invoke-static {v0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 214
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    iget-object v2, v2, Lcom/xyron/game/launcher/UpdateActivity;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 216
    :try_start_1
    iget-object v2, v1, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    iget-object v2, v2, Lcom/xyron/game/launcher/UpdateActivity;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 218
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    .line 221
    :cond_13
    const-string v0, "Error update game"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_6
    return-void
.end method

.method synthetic lambda$handleMessage$0$com-xyron-game-launcher-UpdateActivity$IncomingHandler(Landroid/view/View;)V
    .locals 2

    .line 159
    iget-object p1, p0, Lcom/xyron/game/launcher/UpdateActivity$IncomingHandler;->this$0:Lcom/xyron/game/launcher/UpdateActivity;

    const-string v0, "lite"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/xyron/game/launcher/UpdateActivity;->access$700(Lcom/xyron/game/launcher/UpdateActivity;Ljava/lang/String;Z)V

    return-void
.end method
