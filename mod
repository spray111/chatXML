<xml xmlns="https://developers.google.com/blockly/xml" is_dbot="true" collection="false">
  <variables>
    <variable id="nZ_%~crVCFpD!n=,@z}D">stake</variable>
    <variable id="CwR055G(]h0}2tgkj[A=">chooser</variable>
  </variables>
  <block type="trade_definition" id="p9v/@sAS(JPd?yST|T(a" deletable="false" x="0" y="110">
    <statement name="TRADE_OPTIONS">
      <block type="trade_definition_market" id="[ayZPx#a-*UuIn!dV34i" deletable="false" movable="false">
        <field name="MARKET_LIST">synthetic_index</field>
        <field name="SUBMARKET_LIST">random_index</field>
        <field name="SYMBOL_LIST">1HZ10V</field>
        <next>
          <block type="trade_definition_tradetype" id="]01kgtd.+PP5NIK:?2BR" deletable="false" movable="false">
            <field name="TRADETYPECAT_LIST">digits</field>
            <field name="TRADETYPE_LIST">evenodd</field>
            <next>
              <block type="trade_definition_contracttype" id="G/{[nlQijg[kl$K~B3$m" deletable="false" movable="false">
                <field name="TYPE_LIST">both</field>
                <next>
                  <block type="trade_definition_candleinterval" id="z9fiER/*DMy/wpFdFZ~/" deletable="false" movable="false">
                    <field name="CANDLEINTERVAL_LIST">60</field>
                    <next>
                      <block type="trade_definition_restartbuysell" id="4LWbBdVKTA/QGlJCXrg9" deletable="false" movable="false">
                        <field name="TIME_MACHINE_ENABLED">FALSE</field>
                        <next>
                          <block type="trade_definition_restartonerror" id="`.G`X#m!4);D~U1jyG2w" deletable="false" movable="false">
                            <field name="RESTARTONERROR">TRUE</field>
                          </block>
                        </next>
                      </block>
                    </next>
                  </block>
                </next>
              </block>
            </next>
          </block>
        </next>
      </block>
    </statement>
    <statement name="INITIALIZATION">
      <block type="variable_sets" id=")4D7JE4R047h{dGE9FAd">
        <field name="VAR" id="nZ_%~crVCFpD!n=,@z}D">stake</field>
        <value name="VALUE">
          <block type="math_number" id=".VlUkYKl!f%|6Jh/ByMc">
            <field name="NUM">5</field>
          </block>
        </value>
        <next>
          <block type="riskmanagment_settings" id="fbW;r3`IKw9qO#|-#=XP">
            <statement name="STATEMENT">
              <block type="enable_martingale" id="[h!ur0`bl+z?X!*GJDz-" deletable="false" movable="false">
                <field name="ENABLE_MARTINGALE">true</field>
                <next>
                  <block type="use_split_martingale" id="bWPVK2=?_vb7xx)eZcV-" deletable="false" movable="false">
                    <field name="USE_SPLIT_MARTINGALE">false</field>
                    <next>
                      <block type="martingale" id="E}SE@4)oP2,D_=|K4_%s" deletable="false" movable="false">
                        <value name="MARTINGALE">
                          <shadow type="math_number" id="_M1#*}n$1~gqF-eyE2b9">
                            <field name="NUM">2</field>
                          </shadow>
                        </value>
                        <next>
                          <block type="take_profit" id="T-kYBjkQN1EIF(p21RIf" deletable="false" movable="false">
                            <value name="TAKE_PROFIT">
                              <shadow type="math_number" id="q8z{q;{M$6HT?qrjBBP:">
                                <field name="NUM">111</field>
                              </shadow>
                            </value>
                            <next>
                              <block type="stop_loss" id="d$}WVj|fn$8Xa;@SSAwO" deletable="false" movable="false">
                                <value name="STOP_LOSS">
                                  <shadow type="math_number" id="7Y?UkpkQB^r:aEz4Hrv+">
                                    <field name="NUM">503</field>
                                  </shadow>
                                </value>
                                <next>
                                  <block type="max_split" id="m*av.m/gWu,,{fg]q;8c" deletable="false" movable="false">
                                    <value name="MAX_SPLITS">
                                      <shadow type="math_number" id="INwN^Z#4aKQ;WNXYX_Eb">
                                        <field name="NUM">3</field>
                                      </shadow>
                                    </value>
                                  </block>
                                </next>
                              </block>
                            </next>
                          </block>
                        </next>
                      </block>
                    </next>
                  </block>
                </next>
              </block>
            </statement>
          </block>
        </next>
      </block>
    </statement>
    <statement name="SUBMARKET">
      <block type="trade_definition_tradeoptions" id="}*1^rHa!Q!W}JtSq`kUX">
        <mutation xmlns="http://www.w3.org/1999/xhtml" has_first_barrier="false" has_second_barrier="false" has_prediction="false"></mutation>
        <field name="DURATIONTYPE_LIST">t</field>
        <value name="DURATION">
          <shadow type="math_number_positive" id=")}Gx/9NHy:qNSe2=Y=[X">
            <field name="NUM">1</field>
          </shadow>
        </value>
        <value name="AMOUNT">
          <shadow type="math_number_positive" id="%X/0[35lvv#ag#k=7-mP">
            <field name="NUM">0.35</field>
          </shadow>
          <block type="variables_get" id=";-!k2Yv8;6]SMavjx~o/">
            <field name="VAR" id="nZ_%~crVCFpD!n=,@z}D">stake</field>
          </block>
        </value>
      </block>
    </statement>
  </block>
  <block type="during_purchase" id="=POu}Az7[$8,K/smmCv:" x="714" y="110">
    <statement name="DURING_PURCHASE_STACK">
      <block type="controls_if" id="W/c,~tM6qidb?yc=9c7=">
        <value name="IF0">
          <block type="check_sell" id="s[?-2;YRTR-CN]/%LT=*"></block>
        </value>
      </block>
    </statement>
  </block>
  <block type="after_purchase" id="28VOfq6Z-cF[N{yMr?w." x="714" y="392">
    <statement name="AFTERPURCHASE_STACK">
      <block type="trade_again" id="a(MeR$ZKo0Ku6C=k]U|l"></block>
    </statement>
  </block>
  <block type="before_purchase" id="uO;CbuH?@ok4H:f9f5f#" deletable="false" x="0" y="1160">
    <statement name="BEFOREPURCHASE_STACK">
      <block type="procedures_callnoreturn" id="?P#eZZj/0+]_U~Em=$po">
        <mutation xmlns="http://www.w3.org/1999/xhtml" name="choose_random_market"></mutation>
        <data>A6-.|/Fw3LGbCEBdFj?7</data>
        <next>
          <block type="apollo_purchase" id="%U8?n74N-GCX_^O*.P2Q">
            <field name="PURCHASE_LIST">DIGITEVEN</field>
          </block>
        </next>
      </block>
    </statement>
  </block>
  <block type="math_random_int" id="$caj-?k2fCGhTf]I}nzQ" disabled="true" x="0" y="1386">
    <value name="FROM">
      <shadow type="math_number" id="3a%`USE;4e.0uim]L5?v">
        <field name="NUM">1</field>
      </shadow>
    </value>
    <value name="TO">
      <shadow type="math_number" id="O_.#Z[;M69Dc,tX1HV3N">
        <field name="NUM">9</field>
      </shadow>
    </value>
  </block>
  <block type="procedures_defnoreturn" id="A6-.|/Fw3LGbCEBdFj?7" collapsed="true" x="0" y="1474">
    <field name="NAME">choose_random_market</field>
    <comment pinned="false" h="80" w="160">Describe this function...</comment>
    <statement name="STACK">
      <block type="variable_sets" id="IiQ:+@L9)dhqgf/~e:|o">
        <field name="VAR" id="CwR055G(]h0}2tgkj[A=">chooser</field>
        <value name="VALUE">
          <block type="math_random_int" id="Flk%*AgDVjP2i{Nz#1.:">
            <value name="FROM">
              <shadow type="math_number" id="wDXRu_s!f*X0$CN;k3DV">
                <field name="NUM">1</field>
              </shadow>
            </value>
            <value name="TO">
              <shadow type="math_number" id="*ei5I|3u@O$b{E`|X0xv">
                <field name="NUM">9</field>
              </shadow>
            </value>
          </block>
        </value>
        <!-- Truncated for length -->
      </block>
    </statement>
  </block>
</xml>
